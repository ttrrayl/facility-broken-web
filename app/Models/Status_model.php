<?php

namespace App\Models;

use CodeIgniter\Model;

class Status_model extends Model
{
    protected $table              = 'status';
    protected $primaryKey         = 'id_status';
    protected $returnType         = 'array';
    protected $useSoftDeletes     = false;
    protected $allowedFields      = ['id_status', 'nama_status', 'contact'];
    protected $useTimestamps      = false;
    protected $createdField       = 'tanggal_post';
    protected $updatedField       = 'tanggal';
    protected $deletedField       = 'deleted_at';
    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;

    // listing
    public function listing()
    {
        $builder = $this->db->table('status');
        $builder->orderBy('status.id_status', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }

    // total
    public function total()
    {
        $builder = $this->db->table('status');
        $builder->select('COUNT(*) AS total');
        $builder->orderBy('status.id_status', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // detail
    public function detail($id_status)
    {
        $builder = $this->db->table('status');
        $builder->where('id_status', $id_status);
        $builder->orderBy('status.id_status', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // read
    // public function read($slug_pj)
    // {
    //     $builder = $this->db->table('pj');
    //     $builder->where('slug_pj', $slug_pj);
    //     $builder->orderBy('pj.id_pj', 'DESC');
    //     $query = $builder->get();

    //     return $query->getRowArray();
    // }
}
