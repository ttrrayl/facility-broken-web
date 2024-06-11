<?php

namespace App\Controllers\Admin;

use App\Models\Status_model;

class Status extends BaseController
{
    // mainpage
    public function index()
    {
        checklogin();
        $m_status = new Status_model();
        $status   = $m_status->listing();
        $total   = $m_status->total();

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama_status' => 'required',
            ]
        )) {
            // masuk database
            $data = [
                'nama_status'        => $this->request->getPost('nama_status'),
            ];
            $m_status->save($data);
            // masuk database
            $this->session->setFlashdata('sukses', 'Data telah ditambah');

            return redirect()->to(base_url('admin/status'));
        }
        $data = [
            'title' => 'Nama STATUS: ' . $total['total'],
            'status'      => $status,
            'content'    => 'admin/status/index',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // edit
    public function edit($id_status)
    {
        checklogin();
        $m_status = new Status_model();
        $status   = $m_status->detail($id_status);

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'nama_status' => 'required|min_length[3]',
            ]
        )) {
            $data = [
                'id_status' => $id_status,
                'nama_status'         => $this->request->getPost('nama_status'),
            ];
            $m_status->update($id_status, $data);
            // masuk database
            $this->session->setFlashdata('sukses', 'Data telah diedit');

            return redirect()->to(base_url('admin/status'));
        }
        $data = [
            'title' => 'Edit STATUS: ' . $status['nama_status'],
            'status'      => $status,
            'content'    => 'admin/status/edit',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // delete
    public function delete($id_status)
    {
        checklogin();
        $m_status = new Status_model();
        $data    = ['id_status' => $id_status];
        $m_status->delete($data);
        // masuk database
        $this->session->setFlashdata('sukses', 'Data telah dihapus');

        return redirect()->to(base_url('admin/status'));
    }
}
