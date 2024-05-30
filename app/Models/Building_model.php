<?php

namespace App\Models;

use CodeIgniter\Model;

class Building_model extends Model
{
    protected $table         = 'building';
    protected $primaryKey    = 'id_building';
    protected $allowedFields = [];

    // Listing
    public function listing()
    {
        $builder = $this->db->table('building');
        $builder->select('building.*, pj.nama_pj');
        $builder->join('pj', 'pj.id_pj = building.id_pj', 'LEFT');
        // $builder->join('users', 'users.id_user = building.id_user', 'LEFT');
        $builder->orderBy('building.id_building', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }

    // // Listing
    // public function jenis_building($jenis_building)
    // {
    //     $builder = $this->db->table('building');
    //     $builder->select('building.*, kategori_download.nama_kategori_download, kategori_download.slug_kategori_download, users.nama');
    //     $builder->join('kategori_download', 'kategori_download.id_kategori_download = download.id_kategori_download', 'LEFT');
    //     $builder->join('users', 'users.id_user = download.id_user', 'LEFT');
    //     $builder->where('download.jenis_download', $jenis_download);
    //     $builder->orderBy('download.id_download', 'DESC');
    //     $query = $builder->get();

    //     return $query->getResultArray();
    // }

    // total
    public function total()
    {
        $builder = $this->db->table('building');
        $query   = $builder->get();

        return $query->getNumRows();
    }

    // detail
    public function detail($id_building)
    {
        $builder = $this->db->table('building');
        $builder->select('building.*, pj.nama_pj');
        $builder->join('pj', 'pj.id_pj = building.id_pj', 'LEFT');
        $builder->where('building.id_building', $id_building);
        $builder->orderBy('building.id_building', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // tambah
    public function tambah($data)
    {
        $builder = $this->db->table('building');
        $builder->insert($data);
    }

    // edit
    public function edit($data)
    {
        $builder = $this->db->table('building');
        $builder->where('id_building', $data['id_building']);
        $builder->update($data);
    }

    // slider
    public function slider()
    {
        $builder = $this->db->table('building');
        // $builder->where('jenis_download', 'Homepage');
        $builder->orderBy('building.id_building', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }
}
