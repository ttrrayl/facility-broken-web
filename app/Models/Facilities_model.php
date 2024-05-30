<?php

namespace App\Models;

use CodeIgniter\Model;

class facilities_model extends Model
{
    protected $table              = 'facilities';
    protected $primaryKey         = 'id_facilities';
    protected $returnType         = 'array';
    protected $useSoftDeletes     = false;
    protected $allowedFields      = ['id_facilities', 'type_facilities'];
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
        $builder = $this->db->table('facilities');
        $builder->orderBy('facilities.id_facilities', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }

    // total
    public function total()
    {
        $builder = $this->db->table('facilities');
        $builder->select('COUNT(*) AS total');
        $builder->orderBy('facilities.id_facilities', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // detail
    public function detail($id_facilities)
    {
        $builder = $this->db->table('facilities');
        $builder->where('id_facilities', $id_facilities);
        $builder->orderBy('facilities.id_facilities', 'DESC');
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
