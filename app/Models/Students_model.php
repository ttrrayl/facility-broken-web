<?php

namespace App\Models;

use CodeIgniter\Model;

class Students_model extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'students';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = ['email', 'username', 'password'];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = [];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];

    public function listing()
    {
        $builder = $this->db->table('students');
        $builder->orderBy('students.id', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }

    // total
    public function total()
    {
        $builder = $this->db->table('students');
        $builder->select('COUNT(*) AS total');
        $builder->orderBy('students.id', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // detail
    public function detail($id)
    {
        $builder = $this->db->table('students');
        $builder->where('id', $id);
        $builder->orderBy('students.id', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }
}
