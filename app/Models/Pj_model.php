<?php

namespace App\Models;

use CodeIgniter\Model;

class pj_model extends Model
{
    protected $table              = 'pj';
    protected $primaryKey         = 'id_pj';
    protected $returnType         = 'array';
    protected $useSoftDeletes     = false;
    protected $allowedFields      = ['id_pj', 'nama_pj', 'contact'];
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
        $builder = $this->db->table('pj');
        $builder->orderBy('pj.id_pj', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }

    // total
    public function total()
    {
        $builder = $this->db->table('pj');
        $builder->select('COUNT(*) AS total');
        $builder->orderBy('pj.id_pj', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // detail
    public function detail($id_pj)
    {
        $builder = $this->db->table('pj');
        $builder->where('id_pj', $id_pj);
        $builder->orderBy('pj.id_pj', 'DESC');
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
