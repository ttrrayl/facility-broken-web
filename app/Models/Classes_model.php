<?php

namespace App\Models;

use CodeIgniter\Model;

class Classes_model extends Model
{
    protected $table         = 'classes';
    protected $primaryKey    = 'id_classes';
    protected $allowedFields = [];

    // Listing
    public function listing()
    {
        $builder = $this->db->table('classes');
        $builder->select('classes.*, building.nama_building');
        $builder->join('building', 'building.id_building = classes.id_building', 'LEFT');
        // $builder->join('users', 'users.id_user = building.id_user', 'LEFT');
        $builder->orderBy('classes.id_classes', 'DESC');
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
        $builder = $this->db->table('classes');
        $query   = $builder->get();

        return $query->getNumRows();
    }

    // detail
    public function detail($id_classes)
    {
        $builder = $this->db->table('classes');
        $builder->select('classes.*, building.nama_building');
        $builder->join('building', 'building.id_building = classes.id_building', 'LEFT');
        // $builder->join('users', 'users.id_user = building.id_user', 'LEFT');
        $builder->where('classes.id_classes', $id_classes);
        $builder->orderBy('classes.id_classes', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // tambah
    public function tambah($data)
    {
        $builder = $this->db->table('classes');
        $builder->insert($data);
    }

    // edit
    public function edit($data)
    {
        $builder = $this->db->table('classes');
        $builder->where('id_classes', $data['id_classes']);
        $builder->update($data);
    }

    // slider
    public function slider()
    {
        $builder = $this->db->table('classes');
        // $builder->where('jenis_download', 'Homepage');
        $builder->orderBy('classes.id_classes', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }
}
