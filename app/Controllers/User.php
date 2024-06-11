<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Controllers\BaseController;
use App\Models\StudentModel;
use Firebase\JWT\JWT;

class User extends BaseController
{
    use ResponseTrait;

    public function index()
    {
        $users = new StudentModel();
        return $this->respond(['users' => $users->findAll()], 200);
    }
}
