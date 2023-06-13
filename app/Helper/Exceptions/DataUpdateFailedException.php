<?php

namespace App\Helper\Exceptions;

use App\Enums\ErrorCodes;
use App\Helper\Exceptions\Contracts\ExceptionContract;
use Log;

/**
 * This exception class is used whenever you want to treat as no result found.
 */
class DataUpdateFailedException extends CustomException implements ExceptionContract
{
    /**
     * @see App\Helper\Exceptions\Contracts\ExceptionContract@getResponse()
     */
    public function getResponse($format)
    {
        Log::debug('DataUpdateFailedException getResponse() >> '.$this->getMessage());
        if (!empty($this->getMessage())) {
            $errorCode = ($this->getCode() == 0 ? ErrorCodes::DATA_UPDATE_ERROR : $this->getCode());

            return $this->processor->getCustomExceptionResponse($this->getMessage(), $errorCode);
        }

        return $this->processor->getDefaultUpdateError();
    }
}
