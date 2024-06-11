<?php

namespace App\Models;

use CodeIgniter\Model;

class Report_model extends Model
{
    protected $table         = 'report';
    protected $primaryKey    = 'id_report';
    protected $allowedFields = [];

    // Listing
    public function listing()
    {
        $builder = $this->db->table('report');
        $builder->select('report.*, detail_facilities.nama_detail_facilities, classes.nama_classes, users.nama, status.nama_status');
        $builder->join('detail_facilities', 'detail_facilities.id_detail_facilities = report.id_detail_facilities', 'LEFT');
        $builder->join('building', 'building.id_building = report.id_building', 'LEFT');
        $builder->join('classes', 'classes.id_classes = report.id_classes', 'LEFT');
        $builder->join('status', 'status.id_status = report.id_status', 'LEFT');
        $builder->join('users', 'users.id_user = report.id_user', 'LEFT');
        $builder->orderBy('report.id_report', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }

    // // Listing
    // public function jenis_report($jenis_report)
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
        $builder = $this->db->table('report');
        $query   = $builder->get();

        return $query->getNumRows();
    }

    // detail
    public function detail($id_report)
    {
        $builder = $this->db->table('report');
        $builder->select('report.*, detail_facilities.nama_detail_facilities, classes.nama_classes, users.nama, status.nama_status');
        $builder->join('detail_facilities', 'detail_facilities.id_detail_facilities = report.id_detail_facilities', 'LEFT');
        $builder->join('building', 'building.id_building = report.id_building', 'LEFT');
        $builder->join('classes', 'classes.id_classes = report.id_classes', 'LEFT');
        $builder->join('status', 'status.id_status = report.id_status', 'LEFT');
        $builder->join('users', 'users.id_user = report.id_user', 'LEFT');
        $builder->where('report.id_report', $id_report);
        $builder->orderBy('report.id_report', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // tambah
    public function tambah($data)
    {
        $builder = $this->db->table('report');
        $builder->insert($data);
    }

    // edit
    public function edit($data)
    {
        $builder = $this->db->table('report');
        $builder->where('id_report', $data['id_report']);
        $builder->update($data);
    }

    // slider
    public function slider()
    {
        $builder = $this->db->table('report');
        // $builder->where('jenis_download', 'Homepage');
        $builder->orderBy('report.id_report', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }
}
