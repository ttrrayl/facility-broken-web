<?php

namespace App\Models;

use CodeIgniter\Model;

class Detail_facilities_model extends Model
{
    protected $table         = 'detail_facilities';
    protected $primaryKey    = 'id_detail_facilities';
    protected $allowedFields = [];

    // Listing
    public function listing()
    {
        $builder = $this->db->table('detail_facilities');
        $builder->select('detail_facilities.*, facilities.type_facilities, classes.nama_classes');
        $builder->join('facilities', 'facilities.id_facilities = detail_facilities.id_facilities', 'LEFT');
        $builder->join('classes', 'classes.id_classes = detail_facilities.id_classes', 'LEFT');
        // $builder->join('users', 'users.id_user = building.id_user', 'LEFT');
        $builder->orderBy('detail_facilities.id_detail_facilities', 'DESC');
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
        $builder = $this->db->table('detail_facilities');
        $query   = $builder->get();

        return $query->getNumRows();
    }

    // detail
    public function detail($id_detail_facilities)
    {
        $builder = $this->db->table('detail_facilities');
        $builder->select('detail_facilities.*, facilities.type_facilities, classes.nama_classes');
        $builder->join('facilities', 'facilities.id_facilities = detail_facilities.id_facilities', 'LEFT');
        $builder->join('classes', 'classes.id_classes = detail_facilities.id_classes', 'LEFT');
        // $builder->join('users', 'users.id_user = building.id_user', 'LEFT');
        $builder->where('detail_facilities.id_detail_facilities', $id_detail_facilities);
        $builder->orderBy('detail_facilities.id_detail_facilities', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // tambah
    public function tambah($data)
    {
        $builder = $this->db->table('detail_facilities');
        $builder->insert($data);
    }

    // edit
    public function edit($data)
    {
        $builder = $this->db->table('detail_facilities');
        $builder->where('id_detail_facilities', $data['id_detail_facilities']);
        $builder->update($data);
    }

    // slider
    public function slider()
    {
        $builder = $this->db->table('detail_facilities');
        // $builder->where('jenis_download', 'Homepage');
        $builder->orderBy('detail_facilities.id_detail_facilities', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }
}
