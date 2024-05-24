<?php

namespace App\Controllers\Admin;

use App\Models\pj_model;

class pj extends BaseController
{
    // mainpage
    public function index()
    {
        checklogin();
        $m_pj = new Pj_model();
        $pj   = $m_pj->listing();
        $total   = $m_pj->total();

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama' => 'required',
            ]
        )) {
            // masuk database
            $data = [
                'nama'        => $this->request->getPost('nama'),
                'contact'        => $this->request->getPost('contact'),
                'tanggal_post' => date('Y-m-d H:i:s'),
            ];
            $m_pj->save($data);
            // masuk database
            $this->session->setFlashdata('sukses', 'Data telah ditambah');

            return redirect()->to(base_url('admin/pj'));
        }
        $data = [
            'title' => 'Nama PJ: ' . $total['total'],
            'pj'      => $pj,
            'content'    => 'admin/pj/index',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // edit
    public function edit($id_pj)
    {
        checklogin();
        $m_pj = new Pj_model();
        $pj   = $m_pj->detail($id_pj);

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama' => 'required|min_length[3]',
            ]
        )) {
            $data = [
                'id_pj' => $id_pj,
                'nama'         => $this->request->getPost('nama'),
                'contact'         => $this->request->getPost('contact'),
            ];
            $m_pj->update($id_pj, $data);
            // masuk database
            $this->session->setFlashdata('sukses', 'Data telah diedit');

            return redirect()->to(base_url('admin/pj'));
        }
        $data = [
            'title' => 'Edit PJ: ' . $pj['nama'],
            'pj'      => $pj,
            'content'    => 'admin/pj/edit',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // delete
    public function delete($id_pj)
    {
        checklogin();
        $m_pj = new Pj_model();
        $data    = ['id_pj' => $id_pj];
        $m_pj->delete($data);
        // masuk database
        $this->session->setFlashdata('sukses', 'Data telah dihapus');

        return redirect()->to(base_url('admin/pj'));
    }
}
