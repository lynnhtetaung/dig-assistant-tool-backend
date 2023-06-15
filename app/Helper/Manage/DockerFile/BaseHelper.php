<?php

namespace App\Helper\Manage\DockerFile;

use Log;
use Application;
use Exception;
use ApplicationInstructionMapping;
use ApplicationInstructionMappingTest;
use App\Enums\Processors;
use App\Helper\HelperSingleton;
use App\Helper\Exceptions\NoDataException;
use App\Helper\Exceptions\DataSaveFailedException;
use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;
use File;

/**
 * BaseHelper class for DockerFile
 */
class BaseHelper extends HelperSingleton
{
    protected $processorName = Processors::DOCKER_MANAGE;


    public function getDockerFiles()
    {
        try {
            $result = Application::getAllActive();
            if($result->isEmpty()) {
                throw new NoDataException('Empty docker files');
            }
        } catch (Exception $e) {
            throw $e;
        }

        return $this->processor->success($result);
    }

    public function getInstructionByAppId($appId)
    {
        try {
            $result = ApplicationInstructionMappingTest::getAppInsMappingById($appId);

            Log::debug('Helper -> getInstructionByAppId -> result' . print_r($result, true));

            if($result->isEmpty()) {
                Log::debug('Result is empty -> detail api' . print_r($result, true));

                throw new NoDataException('Empty docker instruction');
            }
        } catch (Exception $e) {
            Log::debug('Helper -> getInstructionByAppId' . $e);
            throw $e;
        }

        return $this->processor->success($result);
    }

    public function createDockerFile($data) 
    {
        // Log::debug('Helper -> Create DockerFile');
        try {
            $payload = $this->parsePayload($data);
            Log::debug('Helper -> $this->parsePayload()' . print_r($data, true));
            $result = Application::saveApplication($data);
            Log::debug('Result ->' . print_r($result, true));


            if (empty($result)) {
                throw new DataSaveFailedException('Application save failed');
            }

            $instructions = $data['instructions'];

            $instructionData = [
                'application_id' => $result['id'],
            ];

            foreach ($instructions as $instruction) {
    
                Log::debug('Instruction Lopping->' . print_r($instruction, true));

                    $instructionMapping = ApplicationInstructionMappingTest::saveAppInsMapping(
                        array_merge(
                            $instructionData,
                            [
                                'id' => $instruction['id'],
                                'instruction_key' => $instruction['key'],
                                'instruction_value' => $instruction['value'],
                            ]
                        )
                    ); 
            }

            Log::debug('Instruction Mapping->' . print_r($instructionMapping, true));


            if (empty($instructionMapping)) {
                throw new DataSaveFailedException('ApplicationInstructionMappingTest save failed');
            }

        } catch (Exception $e) {
            throw $e;
        }

        return $this->processor->success($result);
    }

    public function createNonUserDockerFile($data) 
    {
        try {
                Log::debug('Helper -> createNonUserDockerFile' . print_r($data, true));
                // Create Dockerfile template
                $dockerfile_template = File::get(resource_path('docker/php-dockerfile.template'));


                Log::debug('Helper -> DockerFile Template' . print_r($dockerfile_template, true));

                // Replace placeholders with user input
                $dockerfile = str_replace(
                    ['{{PHP_VERSION}}', '{{DBMS}}', '{{DEPENDENCIES}}', '{{ENV_VARS}}'],
                    [ $data['cmd'],$data['expose'],$data['runDependency'],$data['runMain'] ],
                    // $data['dependencyFile'],$data['from'],$data['copy'],
                    $dockerfile_template
                );
                // Write Dockerfile to disk
                File::put(base_path('Dockerfile'), $dockerfile);

                Log::debug('Helper -> Final DockerFile' . print_r($dockerfile, true));

                $result = $dockerfile;
    
                // return response()->download(base_path('Dockerfile'));
            } 
        catch (Exception $e) {
            Log::debug('Helper -> Final DockerFile Error' . $e);
            throw $e;
        }

        return $this->processor->success($result);
    }


    public function updateDockerFile($appId, $data) 
    {
        try {

            Log::debug('updateDockerFile - AppId ->' . print_r($appId, true));
            $found = ApplicationInstructionMappingTest::getAppInsMappingById($appId);
            
            if($found) {

                $instructions = $data['instructions'];
    
                $instructionData = [
                    'application_id' => $appId,
                ];
    
                foreach ($instructions as $instruction) {
        
                    Log::debug('Instruction Lopping->' . print_r($instruction, true));
    
                        $result = ApplicationInstructionMappingTest::updateAppInsMapping(
                            array_merge(
                                $instructionData,
                                [
                                    'id' => $instruction['id'],
                                    'instruction_key' => $instruction['key'],
                                    'instruction_value' => $instruction['value'],
                                ]
                            )
                        ); 
                }
    
                if (empty($result)) {
                    Log::debug('ApplicationInstructionMappingTest update failed' . print_r($result, true));
                    throw new DataSaveFailedException('ApplicationInstructionMappingTest update failed');
                }
            }
            
                
        } catch (Exception $e) {
            Log::debug('ApplicationInstructionMappingTest Exception failed' . $e);
            throw $e;
        }

        return $this->processor->success($result);
    }

    protected function parsePayload($data) {
        $payload = [
            'name' => $data['name'],
            'description' => $data['description'],
            'os_type' => $data['os_type'],
            'programming' => $data['programming'],
        ];

        return $payload;
    }

    public function changeStatus($id, $name, $status) {
            try {
                $result = Application::changeStatus($id, $status);
                $this->runScript($name);
                if(!$result) {
                    throw new NoDataException('Image Status is not updated');
                }
            } catch (Exception $e) {
                throw $e;
            }

        return $this->processor->success($result);
    }

    public function deleteDockerFile($id) {
        try {
            $result = Application::deleteApplication($id);
            $nextResult = ApplicationInstructionMappingTest::deleteInstruction($id);
            if(!$result) {
                throw new NoDataException('Docker file is not deleted');
            }
        } catch (Exception $e) {
            throw $e;
        }

    return $this->processor->success($result);
    }

    public function runScript($dfName)
    {
        putenv('DF_NAME='.$dfName);
        Log::debug('Docker File Name to run script== -> ' . print_r($dfName, true));   

        $result = shell_exec('di-build/dockerImageBuild.sh');
        Log::info('Script output: '.$result);

        return $this->processor->success($result);
    }

}