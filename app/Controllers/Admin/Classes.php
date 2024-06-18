<?php

namespace App\Controllers\Admin;

use App\Models\Building_model;
use App\Models\Classes_model;

class Classes extends BaseController
{
    // index
    public function index()
    {
        checklogin();
        $m_classes                = new Classes_model();
        $m_building          = new Building_model();
        $classes           = $m_classes->listing();
        $total               = $m_classes->total();

        $data = [
            'title' => 'Data Ruang Kelas (' . $total . ')',
            'classes'   => $classes,
            'content'    => 'admin/classes/index',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // Tambah
    public function tambah()
    {
        checklogin();
        $m_classes                = new Classes_model();
        $m_building          = new Building_model();
        $building   = $m_building->listing();

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [

                'nama_classes' => 'required'
            ]
        )) {
            $data = [
                'id_building' => $this->request->getVar('id_building'),
                'nama_classes'       => $this->request->getVar('nama_classes'),
                'tanggal_post'         => date('Y-m-d H:i:s'),
            ];
            $m_classes->tambah($data);
            //  $this->session->setFlashdata('sukses', 'Data telah ditambah');
            return redirect()->to(base_url('admin/classes'))->with('sukses', 'Data Berhasil di Simpan');
        }

        $data = [
            'title'        => 'Tambah Nama Ruang Kelas',
            'building' => $building,
            'content'           => 'admin/classes/tambah',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // edit
    public function edit($id_classes)
    {
        checklogin();
        $m_classes                = new Classes_model();
        $m_building          = new Building_model();
        $building   = $m_building->listing();
        $classes            = $m_classes->detail($id_classes);
        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [

                'nama_classes' => 'required'
            ]
        )) {

            $data = [
                'id_classes'          => $id_classes,
                'id_building' => $this->request->getVar('id_building'),
                'nama_classes'       => $this->request->getVar('nama_classes'),
            ];
            $m_classes->edit($data);

            return redirect()->to(base_url('admin/classes'))->with('sukses', 'Data Berhasil di Simpan');
        }

        $data = [
            'title'        => 'Edit Nama Ruang Kelas: ' . $classes['nama_classes'],
            'building' => $building,
            'classes'          => $classes,
            'content'           => 'admin/classes/edit',
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
    public function delete($id_classes)
    {
        checklogin();
        $m_classes          = new Classes_model();
        $data       = ['id_classes' => $id_classes];
        $m_classes->delete($data);
        // masuk database
        $this->session->setFlashdata('sukses', 'Data telah dihapus');

        return redirect()->to(base_url('admin/classes'));
    }
}
