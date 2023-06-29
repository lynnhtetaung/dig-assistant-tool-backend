<?php

/*
|--------------------------------------------------------------------------
| Load The Cached Routes
|--------------------------------------------------------------------------
|
| Here we will decode and unserialize the RouteCollection instance that
| holds all of the route information for an application. This allows
| us to instantaneously load the entire route map into the router.
|
*/

app('router')->setCompiledRoutes(
    array (
  'compiled' => 
  array (
    0 => false,
    1 => 
    array (
      '/sanctum/csrf-cookie' => 
      array (
        0 => 
        array (
          0 => 
          array (
            '_route' => 'generated::DE8GoEvKslnmF3PB',
          ),
          1 => NULL,
          2 => 
          array (
            'GET' => 0,
            'HEAD' => 1,
          ),
          3 => NULL,
          4 => false,
          5 => false,
          6 => NULL,
        ),
      ),
      '/api/v1/docker-manage/get_all' => 
      array (
        0 => 
        array (
          0 => 
          array (
            '_route' => '.docker-manage.all',
          ),
          1 => NULL,
          2 => 
          array (
            'GET' => 0,
            'HEAD' => 1,
          ),
          3 => NULL,
          4 => false,
          5 => false,
          6 => NULL,
        ),
      ),
      '/api/v1/docker-manage/create' => 
      array (
        0 => 
        array (
          0 => 
          array (
            '_route' => '.docker-manage.create',
          ),
          1 => NULL,
          2 => 
          array (
            'POST' => 0,
          ),
          3 => NULL,
          4 => false,
          5 => false,
          6 => NULL,
        ),
      ),
      '/api/v1/docker-manage/non-user/create' => 
      array (
        0 => 
        array (
          0 => 
          array (
            '_route' => '.docker-manage.non-user-create',
          ),
          1 => NULL,
          2 => 
          array (
            'POST' => 0,
          ),
          3 => NULL,
          4 => false,
          5 => false,
          6 => NULL,
        ),
      ),
      '/api/v1/docker-manage/validate_dockerfile' => 
      array (
        0 => 
        array (
          0 => 
          array (
            '_route' => '.docker-manage.validate-docker-file',
          ),
          1 => NULL,
          2 => 
          array (
            'POST' => 0,
          ),
          3 => NULL,
          4 => false,
          5 => false,
          6 => NULL,
        ),
      ),
    ),
    2 => 
    array (
      0 => '{^(?|/api/v1/docker\\-manage/(?|de(?|tail/([^/]++)(*:51)|lete/([^/]++)(*:71))|update/([^/]++)(*:94)|application/([^/]++)/([^/]++)/image_status/([^/]++)(*:152)|shell\\-script/([^/]++)(*:182)))/?$}sDu',
    ),
    3 => 
    array (
      51 => 
      array (
        0 => 
        array (
          0 => 
          array (
            '_route' => '.docker-manage.detail',
          ),
          1 => 
          array (
            0 => 'id',
          ),
          2 => 
          array (
            'GET' => 0,
            'HEAD' => 1,
          ),
          3 => NULL,
          4 => false,
          5 => true,
          6 => NULL,
        ),
      ),
      71 => 
      array (
        0 => 
        array (
          0 => 
          array (
            '_route' => '.docker-manage.delete',
          ),
          1 => 
          array (
            0 => 'id',
          ),
          2 => 
          array (
            'DELETE' => 0,
          ),
          3 => NULL,
          4 => false,
          5 => true,
          6 => NULL,
        ),
      ),
      94 => 
      array (
        0 => 
        array (
          0 => 
          array (
            '_route' => '.docker-manage.update',
          ),
          1 => 
          array (
            0 => 'id',
          ),
          2 => 
          array (
            'PUT' => 0,
          ),
          3 => NULL,
          4 => false,
          5 => true,
          6 => NULL,
        ),
      ),
      152 => 
      array (
        0 => 
        array (
          0 => 
          array (
            '_route' => '.docker-manage.image-status',
          ),
          1 => 
          array (
            0 => 'id',
            1 => 'name',
            2 => 'status',
          ),
          2 => 
          array (
            'GET' => 0,
            'HEAD' => 1,
          ),
          3 => NULL,
          4 => false,
          5 => true,
          6 => NULL,
        ),
      ),
      182 => 
      array (
        0 => 
        array (
          0 => 
          array (
            '_route' => '.docker-manage.shell-script',
          ),
          1 => 
          array (
            0 => 'name',
          ),
          2 => 
          array (
            'GET' => 0,
            'HEAD' => 1,
          ),
          3 => NULL,
          4 => false,
          5 => true,
          6 => NULL,
        ),
        1 => 
        array (
          0 => NULL,
          1 => NULL,
          2 => NULL,
          3 => NULL,
          4 => false,
          5 => false,
          6 => 0,
        ),
      ),
    ),
    4 => NULL,
  ),
  'attributes' => 
  array (
    'generated::DE8GoEvKslnmF3PB' => 
    array (
      'methods' => 
      array (
        0 => 'GET',
        1 => 'HEAD',
      ),
      'uri' => 'sanctum/csrf-cookie',
      'action' => 
      array (
        'uses' => 'Laravel\\Sanctum\\Http\\Controllers\\CsrfCookieController@show',
        'controller' => 'Laravel\\Sanctum\\Http\\Controllers\\CsrfCookieController@show',
        'namespace' => NULL,
        'prefix' => 'sanctum',
        'where' => 
        array (
        ),
        'middleware' => 
        array (
          0 => 'web',
        ),
        'as' => 'generated::DE8GoEvKslnmF3PB',
      ),
      'fallback' => false,
      'defaults' => 
      array (
      ),
      'wheres' => 
      array (
      ),
      'bindingFields' => 
      array (
      ),
      'lockSeconds' => NULL,
      'waitSeconds' => NULL,
      'withTrashed' => false,
    ),
    '.docker-manage.detail' => 
    array (
      'methods' => 
      array (
        0 => 'GET',
        1 => 'HEAD',
      ),
      'uri' => 'api/v1/docker-manage/detail/{id}',
      'action' => 
      array (
        'middleware' => 
        array (
          0 => 'api',
          1 => 'cors',
        ),
        'uses' => 'App\\Http\\Controllers\\DockerManageController@show',
        'controller' => 'App\\Http\\Controllers\\DockerManageController@show',
        'as' => '.docker-manage.detail',
        'namespace' => 'App\\Http\\Controllers',
        'prefix' => '/api/v1/docker-manage',
        'where' => 
        array (
        ),
      ),
      'fallback' => false,
      'defaults' => 
      array (
      ),
      'wheres' => 
      array (
      ),
      'bindingFields' => 
      array (
      ),
      'lockSeconds' => NULL,
      'waitSeconds' => NULL,
      'withTrashed' => false,
    ),
    '.docker-manage.all' => 
    array (
      'methods' => 
      array (
        0 => 'GET',
        1 => 'HEAD',
      ),
      'uri' => 'api/v1/docker-manage/get_all',
      'action' => 
      array (
        'middleware' => 
        array (
          0 => 'api',
          1 => 'cors',
        ),
        'uses' => 'App\\Http\\Controllers\\DockerManageController@index',
        'controller' => 'App\\Http\\Controllers\\DockerManageController@index',
        'as' => '.docker-manage.all',
        'namespace' => 'App\\Http\\Controllers',
        'prefix' => '/api/v1/docker-manage',
        'where' => 
        array (
        ),
      ),
      'fallback' => false,
      'defaults' => 
      array (
      ),
      'wheres' => 
      array (
      ),
      'bindingFields' => 
      array (
      ),
      'lockSeconds' => NULL,
      'waitSeconds' => NULL,
      'withTrashed' => false,
    ),
    '.docker-manage.create' => 
    array (
      'methods' => 
      array (
        0 => 'POST',
      ),
      'uri' => 'api/v1/docker-manage/create',
      'action' => 
      array (
        'middleware' => 
        array (
          0 => 'api',
          1 => 'cors',
        ),
        'uses' => 'App\\Http\\Controllers\\DockerManageController@create',
        'controller' => 'App\\Http\\Controllers\\DockerManageController@create',
        'as' => '.docker-manage.create',
        'namespace' => 'App\\Http\\Controllers',
        'prefix' => '/api/v1/docker-manage',
        'where' => 
        array (
        ),
      ),
      'fallback' => false,
      'defaults' => 
      array (
      ),
      'wheres' => 
      array (
      ),
      'bindingFields' => 
      array (
      ),
      'lockSeconds' => NULL,
      'waitSeconds' => NULL,
      'withTrashed' => false,
    ),
    '.docker-manage.update' => 
    array (
      'methods' => 
      array (
        0 => 'PUT',
      ),
      'uri' => 'api/v1/docker-manage/update/{id}',
      'action' => 
      array (
        'middleware' => 
        array (
          0 => 'api',
          1 => 'cors',
        ),
        'uses' => 'App\\Http\\Controllers\\DockerManageController@update',
        'controller' => 'App\\Http\\Controllers\\DockerManageController@update',
        'as' => '.docker-manage.update',
        'namespace' => 'App\\Http\\Controllers',
        'prefix' => '/api/v1/docker-manage',
        'where' => 
        array (
        ),
      ),
      'fallback' => false,
      'defaults' => 
      array (
      ),
      'wheres' => 
      array (
      ),
      'bindingFields' => 
      array (
      ),
      'lockSeconds' => NULL,
      'waitSeconds' => NULL,
      'withTrashed' => false,
    ),
    '.docker-manage.delete' => 
    array (
      'methods' => 
      array (
        0 => 'DELETE',
      ),
      'uri' => 'api/v1/docker-manage/delete/{id}',
      'action' => 
      array (
        'middleware' => 
        array (
          0 => 'api',
          1 => 'cors',
        ),
        'uses' => 'App\\Http\\Controllers\\DockerManageController@delete',
        'controller' => 'App\\Http\\Controllers\\DockerManageController@delete',
        'as' => '.docker-manage.delete',
        'namespace' => 'App\\Http\\Controllers',
        'prefix' => '/api/v1/docker-manage',
        'where' => 
        array (
        ),
      ),
      'fallback' => false,
      'defaults' => 
      array (
      ),
      'wheres' => 
      array (
      ),
      'bindingFields' => 
      array (
      ),
      'lockSeconds' => NULL,
      'waitSeconds' => NULL,
      'withTrashed' => false,
    ),
    '.docker-manage.image-status' => 
    array (
      'methods' => 
      array (
        0 => 'GET',
        1 => 'HEAD',
      ),
      'uri' => 'api/v1/docker-manage/application/{id}/{name}/image_status/{status}',
      'action' => 
      array (
        'middleware' => 
        array (
          0 => 'api',
          1 => 'cors',
        ),
        'uses' => 'App\\Http\\Controllers\\DockerManageController@changeStatus',
        'controller' => 'App\\Http\\Controllers\\DockerManageController@changeStatus',
        'as' => '.docker-manage.image-status',
        'namespace' => 'App\\Http\\Controllers',
        'prefix' => '/api/v1/docker-manage',
        'where' => 
        array (
        ),
      ),
      'fallback' => false,
      'defaults' => 
      array (
      ),
      'wheres' => 
      array (
      ),
      'bindingFields' => 
      array (
      ),
      'lockSeconds' => NULL,
      'waitSeconds' => NULL,
      'withTrashed' => false,
    ),
    '.docker-manage.shell-script' => 
    array (
      'methods' => 
      array (
        0 => 'GET',
        1 => 'HEAD',
      ),
      'uri' => 'api/v1/docker-manage/shell-script/{name}',
      'action' => 
      array (
        'middleware' => 
        array (
          0 => 'api',
          1 => 'cors',
        ),
        'uses' => 'App\\Http\\Controllers\\DockerManageController@run',
        'controller' => 'App\\Http\\Controllers\\DockerManageController@run',
        'as' => '.docker-manage.shell-script',
        'namespace' => 'App\\Http\\Controllers',
        'prefix' => '/api/v1/docker-manage',
        'where' => 
        array (
        ),
      ),
      'fallback' => false,
      'defaults' => 
      array (
      ),
      'wheres' => 
      array (
      ),
      'bindingFields' => 
      array (
      ),
      'lockSeconds' => NULL,
      'waitSeconds' => NULL,
      'withTrashed' => false,
    ),
    '.docker-manage.non-user-create' => 
    array (
      'methods' => 
      array (
        0 => 'POST',
      ),
      'uri' => 'api/v1/docker-manage/non-user/create',
      'action' => 
      array (
        'middleware' => 
        array (
          0 => 'api',
          1 => 'cors',
        ),
        'uses' => 'App\\Http\\Controllers\\DockerManageController@createNonUser',
        'controller' => 'App\\Http\\Controllers\\DockerManageController@createNonUser',
        'as' => '.docker-manage.non-user-create',
        'namespace' => 'App\\Http\\Controllers',
        'prefix' => '/api/v1/docker-manage',
        'where' => 
        array (
        ),
      ),
      'fallback' => false,
      'defaults' => 
      array (
      ),
      'wheres' => 
      array (
      ),
      'bindingFields' => 
      array (
      ),
      'lockSeconds' => NULL,
      'waitSeconds' => NULL,
      'withTrashed' => false,
    ),
    '.docker-manage.validate-docker-file' => 
    array (
      'methods' => 
      array (
        0 => 'POST',
      ),
      'uri' => 'api/v1/docker-manage/validate_dockerfile',
      'action' => 
      array (
        'middleware' => 
        array (
          0 => 'api',
          1 => 'cors',
        ),
        'uses' => 'App\\Http\\Controllers\\DockerManageController@validateDocker',
        'controller' => 'App\\Http\\Controllers\\DockerManageController@validateDocker',
        'as' => '.docker-manage.validate-docker-file',
        'namespace' => 'App\\Http\\Controllers',
        'prefix' => '/api/v1/docker-manage',
        'where' => 
        array (
        ),
      ),
      'fallback' => false,
      'defaults' => 
      array (
      ),
      'wheres' => 
      array (
      ),
      'bindingFields' => 
      array (
      ),
      'lockSeconds' => NULL,
      'waitSeconds' => NULL,
      'withTrashed' => false,
    ),
  ),
)
);
