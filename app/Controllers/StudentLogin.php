<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Controllers\BaseController;
use CodeIgniter\API\ResponseTrait;
use App\Models\Students_model;
use Firebase\JWT\JWT;

class StudentLogin extends BaseController
{
    use ResponseTrait;

    public function index()
    {
        $studentModel = new Students_model();

        $email = $this->request->getVar('email');
        $password = $this->request->getVar('password');

        $user = $studentModel->where('email', $email)->first();

        if (is_null($user)) {
            return $this->respond(['error' => 'Invalid username or password.'], 401);
        }

        $pwd_verify = password_verify($password, $user['password']);

        if (!$pwd_verify) {
            $response = [
                'error' => true,
                'message' => 'Invalid username or password.'
            ];
            return $this->respond($response, 401);
        }

        $key = getenv('JWT_SECRET');
        $iat = time(); // current timestamp value
        $exp = $iat + 3600;

        $payload = array(
            "iss" => "Issuer of the JWT",
            "aud" => "Audience that the JWT",
            "sub" => "Subject of the JWT",
            "iat" => $iat, //Time the JWT issued at
            "exp" => $exp, // Expiration time of token
            "email" => $user['email'],
        );

        $token = JWT::encode($payload, $key, 'HS256');

        $response = [
            'error' => false,
            'message' => 'Login Succesful',
            'loginResult' => [
                'token' => $token
            ]

        ];

        return $this->respond($response, 200);
    }
}
