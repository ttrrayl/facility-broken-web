<?php

namespace App\Controllers\Admin;

use App\Models\Facilities_model;
use App\Models\Classes_model;
use App\Models\Detail_facilities_model;

class Detail_facilities extends BaseController
{
    // index
    public function index()
    {
        checklogin();
        $m_detail_facilities                = new Detail_facilities_model();
        $m_facilities          = new Facilities_model();
        $m_classes          = new Classes_model();
        $detail_facilities           = $m_detail_facilities->listing();
        $total               = $m_detail_facilities->total();

        $data = [
            'title' => 'Data Fasilitas (' . $total . ')',
            'detail_facilities'   => $detail_facilities,
            'content'    => 'admin/detail_facilities/index',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // Tambah
    public function tambah()
    {
        checklogin();
        $m_detail_facilities                = new Detail_facilities_model();
        $m_facilities          = new Facilities_model();
        $m_classes          = new Classes_model();
        $facilities   = $m_facilities->listing();
        $classes   = $m_classes->listing();

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama_detail_facilities' => 'required',
                'quantity' => 'required'
            ]
        )) {
            $data = [
                'id_facilities' => $this->request->getVar('id_facilities'),
                'id_classes' => $this->request->getVar('id_classes'),
                'nama_detail_facilities'       => $this->request->getVar('nama_detail_facilities'),
                'quantity' => $this->request->getVar('quantity'),
                'tanggal_post'         => date('Y-m-d H:i:s'),
            ];
            $m_detail_facilities->tambah($data);
            //  $this->session->setFlashdata('sukses', 'Data telah ditambah');
            return redirect()->to(base_url('admin/detail_facilities'))->with('sukses', 'Data Berhasil di Simpan');
        }

        $data = [
            'title'        => 'Tambah Nama Ruang Kelas',
            'facilities' => $facilities,
            'classes' => $classes,
            'content'           => 'admin/detail_facilities/tambah',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // edit
    public function edit($id_detail_facilities)
    {
        checklogin();
        $m_detail_facilities                = new Detail_facilities_model();
        $m_facilities          = new Facilities_model();
        $m_classes          = new Classes_model();
        $facilities   = $m_facilities->listing();
        $classes   = $m_classes->listing();
        $detail_facilities            = $m_detail_facilities->detail($id_detail_facilities);
        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama_detail_facilities' => 'required',
                'quantity' => 'required'
            ]
        )) {

            $data = [
                'id_detail_facilities'          => $id_detail_facilities,
                'id_facilities' => $this->request->getVar('id_facilities'),
                'id_classes' => $this->request->getVar('id_classes'),
                'nama_detail_facilities'       => $this->request->getVar('nama_detail_facilities'),
                'quantity' => $this->request->getVar('quantity')
            ];
            $m_detail_facilities->edit($data);

            return redirect()->to(base_url('admin/detail_facilities'))->with('sukses', 'Data Berhasil di Simpan');
        }

        $data = [
            'title'        => 'Edit Nama Fasilitas: ' . $detail_facilities['nama_detail_facilities'],
            'facilities' => $facilities,
            'classes' => $classes,
            'detail_facilities'          => $detail_facilities,
            'content'           => 'admin/detail_facilities/edit',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // // unduh
    // public function unduh($id_building)
    // {
    //     checklogin();
    //     $m_pj = new pj_model();
    //     $m_building          = new Building_model();
    //     $pj   = $m_pj->listing();
    //     $building            = $m_building->detail($id_building);

    //     return $this->response->download('../assets/upload/file/' . $download['gambar'], null);
    // }

    // Delete
    public function delete($id_detail_facilities)
    {
        checklogin();
        $m_detail_facilities                = new Detail_facilities_model();
        $data       = ['id_detail_facilities' => $id_detail_facilities];
        $m_detail_facilities->delete($data);
        // masuk database
        $this->session->setFlashdata('sukses', 'Data telah dihapus');

        return redirect()->to(base_url('admin/detail_facilities'));
    }
}
