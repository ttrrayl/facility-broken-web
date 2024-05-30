<?php

namespace App\Controllers\Admin;

use App\Models\Facilities_model;

class Facilities extends BaseController
{
    // mainpage
    public function index()
    {
        checklogin();
        $m_facilities = new Facilities_model();
        $facilities   = $m_facilities->listing();
        $total   = $m_facilities->total();

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'type_facilities' => 'required',
            ]
        )) {
            // masuk database
            $data = [
                'type_facilities'        => $this->request->getPost('type_facilities'),
                'tanggal_post' => date('Y-m-d H:i:s'),
            ];
            $m_facilities->save($data);
            // masuk database
            $this->session->setFlashdata('sukses', 'Data telah ditambah');

            return redirect()->to(base_url('admin/facilities'));
        }
        $data = [
            'title' => 'Nama facilities: ' . $total['total'],
            'facilities'      => $facilities,
            'content'    => 'admin/facilities/index',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // edit
    public function edit($id_facilities)
    {
        checklogin();
        $m_facilities = new Facilities_model();
        $facilities   = $m_facilities->detail($id_facilities);

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'type_facilities' => 'required',
            ]
        )) {
            $data = [
                'id_facilities' => $id_facilities,
                'type_facilities'         => $this->request->getPost('type_facilities'),
                'contact'         => $this->request->getPost('contact'),
            ];
            $m_facilities->update($id_facilities, $data);
            // masuk database
            $this->session->setFlashdata('sukses', 'Data telah diedit');

            return redirect()->to(base_url('admin/facilities'));
        }
        $data = [
            'title' => 'Edit facilities: ' . $facilities['type_facilities'],
            'facilities'      => $facilities,
            'content'    => 'admin/facilities/edit',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // delete
    public function delete($id_facilities)
    {
        checklogin();
        $m_facilities = new Facilities_model();
        $data    = ['id_facilities' => $id_facilities];
        $m_facilities->delete($data);
        // masuk database
        $this->session->setFlashdata('sukses', 'Data telah dihapus');

        return redirect()->to(base_url('admin/facilities'));
    }
}
