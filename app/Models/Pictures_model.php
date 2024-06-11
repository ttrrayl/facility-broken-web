<?php

namespace App\Models;

use CodeIgniter\Model;

class Pictures_model extends Model
{
    protected $table              = 'pictures';
    protected $primaryKey         = 'id_pictures';
    protected $returnType         = 'array';
    protected $useSoftDeletes     = false;
    protected $allowedFields      = ['id_pictures', 'id_report', 'nama_pictures', 'lat', 'lon'];
    protected $useTimestamps      = false;
    protected $createdField       = 'created_at';
    protected $updatedField       = 'updated_at';
    protected $deletedField       = 'deleted_at';
    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;

    // listing
    public function listing()
    {
        $builder = $this->db->table('pictures');
        $builder->orderBy('pictures.id_pictures', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }

    // total
    public function total()
    {
        $builder = $this->db->table('pictures');
        $builder->select('COUNT(*) AS total');
        $builder->orderBy('pictures.id_pictures', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // detail
    public function detail($id_pictures)
    {
        $builder = $this->db->table('pictures');
        $builder->where('id_pictures', $id_pictures);
        $builder->orderBy('pictures.id_pictures', 'DESC');
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
