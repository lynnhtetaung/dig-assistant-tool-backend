<?php

namespace App\Models;

use App\Models\BaseModel;
use Carbon\Carbon;
use Log;

class Programmings extends BaseModel
{
    /**
     * The database connection used by the model.
     *
     * @var string
     */
    protected $connection = 'funabiki_docker_manage';

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'programmings';

    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'type',
        'status'
    ];
}