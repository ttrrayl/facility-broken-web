<?php

namespace App\Controllers\Admin;

use App\Models\Students_model;

class Students extends BaseController
{
    // index
    public function index()
    {
        checklogin();
        $m_students         = new Students_model();
        $students           = $m_students->listing();
        $total               = $m_students->total();

        $data = [
            'title' => 'Pengguna Kumandra App: ' . $total['total'],
            'students'   => $students,
            'content'    => 'admin/students/index',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // // Tambah
    // public function tambah()
    // {
    //     checklogin();
    //     $m_students          = new Students_model();

    //     // Start validasi
    //     if ($this->request->getMethod() === 'post' && $this->validate(
    //         [

    //             'nama_building' => 'required'
    //         ]
    //     )) {
    //         $data = [
    //             'id_pj' => $this->request->getVar('id_pj'),
    //             'nama_building'       => $this->request->getVar('nama_building'),
    //             'tanggal_post'         => date('Y-m-d H:i:s'),
    //         ];
    //         $m_building->tambah($data);
    //         //  $this->session->setFlashdata('sukses', 'Data telah ditambah');
    //         return redirect()->to(base_url('admin/building'))->with('sukses', 'Data Berhasil di Simpan');
    //     }

    //     $data = [
    //         'title'        => 'Tambah Nama Gedung',
    //         'pj' => $pj,
    //         'content'           => 'admin/building/tambah',
    //     ];
    //     echo view('admin/layout/wrapper', $data);
    // }

    // edit
    // public function edit($id)
    // {
    //     checklogin();
    //     $m_students        = new Students_model();
    //     $students            = $m_students->detail($id);
    //     // Start validasi
    //     if ($this->request->getMethod() === 'post' && $this->validate(
    //         [

    //             'nama_building' => 'required'
    //         ]
    //     )) {

    //         $data = [
    //             'id_building'          => $id_building,
    //             'id_pj' => $this->request->getVar('id_pj'),
    //             'nama_building'       => $this->request->getVar('nama_building'),
    //         ];
    //         $m_building->edit($data);

    //         return redirect()->to(base_url('admin/building'))->with('sukses', 'Data Berhasil di Simpan');
    //     }

    //     $data = [
    //         'title'        => 'Edit Nama Gedung Kuliah: ' . $building['nama_pj'],
    //         'pj' => $pj,
    //         'building'          => $building,
    //         'content'           => 'admin/building/edit',
    //     ];
    //     echo view('admin/layout/wrapper', $data);
    // }

    // // // unduh
    // // public function unduh($id_building)
    // // {
    // //     checklogin();
    // //     $m_pj = new pj_model();
    // //     $m_building          = new Building_model();
    // //     $pj   = $m_pj->listing();
    // //     $building            = $m_building->detail($id_building);

    // //     return $this->response->download('../assets/upload/file/' . $download['gambar'], null);
    // // }

    // // Delete
    // public function delete($id_building)
    // {
    //     checklogin();
    //     $m_building          = new Building_model();
    //     $data       = ['id_building' => $id_building];
    //     $m_building->delete($data);
    //     // masuk database
    //     $this->session->setFlashdata('sukses', 'Data telah dihapus');

    //     return redirect()->to(base_url('admin/building'));
    // }
}
