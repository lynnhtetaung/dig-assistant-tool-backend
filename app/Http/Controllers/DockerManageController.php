<?php

namespace App\Http\Controllers;

use Log;
use Validator;
use Exception;
use Throwable;
use ExceptionService;
use App\Enums\Services;
use Illuminate\Http\Request;
use App\Http\Controllers\BaseController;
use App\Helper\Exceptions\InvalidAccessException;

class DockerManageController extends BaseController
{

    /**
     * Constructor.
     */
    public function __construct(Request $request) 
    {
        // Log::debug('Docker Manage => Controller ->');

        $this->_serviceName = Services::DOCKER_MANAGE;
        parent::__construct($request);
    }

    public function index()
    {
        try {
            $response = $this->helper->getDockerFiles();
            Log::debug('Docker file all >>> Result'. print_r($response, true));

        } catch (Exception $e) {
            $response = ExceptionService::getResponse($e);
            Log::debug('Docker file all >>> Error'. print_r($response, true));
        }
        return response()->json($response, $response['status']);
    }

    /**
     * Show
     */
    public function show($id)
    {
        try {
            $response = $this->helper->getInstructionByAppId($id);
        } catch (Exception $e) {
            $response = ExceptionService::getResponse($e);
        }
        return response()->json($response, $response['status']);
    }

    /**
     * Create
     */
    public function create()
    {
        try {
            $data = $this->validateDockerData();
            Log::debug('Validated -> Data'. print_r($data, true));
            $response = $this->helper->createDockerFile($data);
        } catch (Exception $e) {
            $response = ExceptionService::getResponse($e);
            Log::debug('Coming -> Docker Create error'. print_r($response, true));

        }
        return response()->json($response, $response['status']);
    }

    /**
     * createNonUser
     */
    public function createNonUser()
    {
        try {
            $data = $this->validateNonUserDocker();
            Log::debug('Validated -> createNonUser'. print_r($data, true));
            $response = $this->helper->createNonUserDockerFile($data);
        } catch (Exception $e) {
            $response = ExceptionService::getResponse($e);
            Log::debug('Coming -> Docker createNonUser error'. print_r($response, true));

        }
        return response()->json($response, $response['status']);
    }

    /**
     * Update
     */
    public function update($id)
    {
        try {

            $request = request();
            Log::debug('Validate -> Request Data'. print_r($request->all(), true));
            $validator = Validator::make($request->all(),
                [
                    'instructions' => 'required',
                ]
            );
    
            if ($validator->fails()) {
                throw new InvalidAccessException('Missing parameters');
            }
    
            $data = [
                'instructions' => $request->input('instructions'),
            ];

            $response = $this->helper->updateDockerFile($id, $data);

        } catch (Exception $e) {
            $response = ExceptionService::getResponse($e);
        }
        return response()->json($response, $response['status']);
    }

    /**
     * Delete
     */
    public function delete($id)
    {
        try {
            $response = $this->helper->deleteDockerFile($id);
        } catch (Exception $e) {
            $response = ExceptionService::getResponse($e);
        }
        return response()->json($response, $response['status']);
    }

    /**
     * RunScript
     */
    public function run()
    {
        try {
            $response = $this->helper->runScript();
        } catch (Exception $e) {
            $response = ExceptionService::getResponse($e);
        }
        return response()->json($response, $response['status']);
    }

    /**
     * Change the image status
     */
    public function changeStatus($id, $name, $status)
    {
        try {
            $response = $this->helper->changeStatus($id, $name, $status);
        } catch (Exception $e) {
            $response = ExceptionService::getResponse($e);
        }
        return response()->json($response, $response['status']);
    }

    /**
     * Validate docker file status
     */
    public function validateDocker()
    {
        try {
            $data = $this->validateDockerFileData();
            $response = $this->helper->validateDockerfile($data);

        } catch (Exception $e) {
            $response = ExceptionService::getResponse($e);
        }
        return response()->json($response, $response['status']);
    }

    /**
     * Handle the validation process that required for employee data set.
     * If validation failed, it will throw the exception.
     */
    public function validateDockerData()
    {
        $request = request();
        Log::debug('Validate -> Request Data'. print_r($request->all(), true));
        $validator = Validator::make($request->all(),
            [
                'name' => 'required',
                'description' => 'required',
                'os_type' => 'required',
                'programming' => 'required',
                'instructions' => 'required',
                // 'image_status' => 'required',
            ]
        );

        Log::debug('Validated Data'. print_r($validator, true));

        // dd($request->all());
        if ($validator->fails()) {
            dd($validator->errors());
            throw new InvalidAccessException('Missing parameters');
        }

        $data = [
            'name' => $request->input('name'),
            'description' => $request->input('description'),
            'os_type' => $request->input('os_type'),
            'programming' => $request->input('programming'),
            'instructions' => $request->input('instructions')
        ];

        return $data;
    }

    /**
     * Handle the validation process that required for employee data set.
     * If validation failed, it will throw the exception.
     */
    public function validateNonUserDocker()
    {
        $request = request();
        Log::debug('Validate -> Request Data'. print_r($request->all(), true));
        $validator = Validator::make($request->all(),
            [
                'dependencyFile' => '',
                'from' => 'required',
                'maintainer' => '',
                'runMain' => '',
                'workdir' => '',
                'copy' => '',
                'copyDependency' => '',
                'runDependency' => '',
                'expose' => '',
                'cmd' => 'required',
                'template' => 'required'
            ]
        );

        Log::debug('validateNonUserDocker'. print_r($validator, true));

        // dd($request->all());
        if ($validator->fails()) {
            dd($validator->errors());
            throw new InvalidAccessException('Missing parameters');
        }

        $data = [
            'dependencyFile' => $request->input('dependencyFile'),
            'from' => $request->input('from'),
            'maintainer' => $request->input('maintainer'),
            'runMain' => $request->input('runMain'),
            'workdir' => $request->input('workdir'),
            'copy' => $request->input('copy'),
            'copyDependency' => $request->input('copyDependency'),
            'runDependency' => $request->input('runDependency'),
            'expose' => $request->input('expose'),
            'cmd' => $request->input('cmd'),
            'template' => $request->input('template')
        ];

        return $data;
    }

    public function validateDockerFileData() {

        $request = request();
        $validator = Validator::make($request->all(),
        [
            'dockerfile' => 'required'
        ]);

        if ($validator->fails()) {
            dd($validator->errors());
            throw new InvalidAccessException('Missing parameters');
        }

        $data = [
            'dockerfile' => $request->input('dockerfile')
        ];

        return $data;

    }
}