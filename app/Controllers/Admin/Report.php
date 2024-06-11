<?php

namespace App\Controllers\Admin;

use App\Models\Detail_facilities_model;
use App\Models\Classes_model;
use App\Models\User_model;
use App\Models\Status_model;
use App\Models\Report_model;
use App\Models\Pictures_model;
use App\Models\Building_model;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\HTTP\ResponseInterface;

class Report extends ResourceController
{
    protected $modelName = 'App\Models\Report_model';
    protected $format    = 'json';


    // index
    public function index()
    {
        //checklogin();


        $m_report          = new Report_model();
        $m_building                = new Building_model();
        $m_classes                = new Classes_model();
        $m_user               = new User_model();
        $m_status                = new Status_model();
        $m_detail_facilities                = new Detail_facilities_model();
        $report           = $m_report->listing();
        $total               = $m_report->total();

        $data = [
            'title' => 'Laporan Kerusakan (' . $total . ')',
            'report'   => $report,
            'content'    => 'admin/report/index',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    // Tambah
    public function create()
    {
        checklogin();

        // $validation = \Config\Services::validation();

        // // Start validasi
        // $validation->setRules([
        //     'description' => 'required|string',
        //     'images.*' => 'uploaded[images]|is_image[images]|mime_in[images,image/jpg,image/jpeg,image/png]|max_size[images,2048]',
        // ]);

        // if (!$validation->withRequest($this->request)->run()) {
        //     return $this->failValidationErrors($validation->getErrors());
        // }


        $m_report          = new Report_model();
        $m_pictures          = new Pictures_model();
        $m_building                = new Building_model();
        $m_classes                = new Classes_model();
        $m_status                = new Status_model();
        $m_detail_facilities                = new Detail_facilities_model();
        $classes   = $m_classes->listing();
        $status   = $m_status->listing();
        $detail_facilities   = $m_detail_facilities->listing();



        $data = [
            'id_user' => 1,
            'id_building' => $this->request->getPost('id_building'),
            'id_classes' => $this->request->getPost('id_classes'),
            'id_detail_facilities' => $this->request->getPost('id_detail_facilities'),
            'id_status' => 1,
            'description' => $this->request->getPost('description'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ];
        $m_report->insert($data);
        $reportId = $m_report->getInsertID();

        if ($files = $this->request->getFiles()) {
            foreach ($files['pictures'] as $img) {
                if ($img->isValid() && !$img->hasMoved()) {
                    $newName = $img->getRandomName();
                    $img->move(WRITEPATH . 'uploads', $newName);
                    $latitude = $this->request->getPost('latitude');
                    $longitude = $this->request->getPost('longitude');

                    $imageData = [
                        'id_report' => $reportId,
                        'nama_pictures' => $newName,
                        'lat' => $latitude,
                        'lon' => $longitude,
                        'uploaded_at' => date('Y-m-d H:i:s'),
                    ];
                    $m_pictures->insert($imageData);
                }
            }
        }
        $this->respondCreated(['message' => 'Report created successfully', 'id_report' => $reportId]);
        return redirect()->to(base_url('admin/report'));

        // if ($this->request->getMethod() === 'post' && $this->validate(
        //     [

        //         'description' => 'required'
        //     ]
        // )) {
        //     $data = [
        //         'id_classes' => $this->request->getVar('id_classes'),
        //         'id_user'              => $this->session->get('id_user'),
        //         'id_status' => $this->request->getVar('id_status'),
        //         'id_detail_facilities' => $this->request->getVar('id_detail_facilities'),
        //         'description'       => $this->request->getVar('description'),
        //         'tanggal_post'         => date('Y-m-d H:i:s'),
        //     ];
        //     $m_report->tambah($data);
        //     //  $this->session->setFlashdata('sukses', 'Data telah ditambah');
        //     return redirect()->to(base_url('admin/report'))->with('sukses', 'Data Berhasil di Simpan');
        // }

        $data = [
            'title'        => 'Tambah Laporan Kerusakan',
            'building' => $m_building,
            'classes' => $classes,
            'status' => $status,
            'detail_facilities' => $detail_facilities,
            'content'           => 'admin/report/tambah',
        ];
        echo view('admin/layout/wrapper', $data);
    }

    //get detail
    public function getReport($id)
    {
        $m_report          = new Report_model();
        $m_pictures          = new Pictures_model();
        $m_classes                = new Classes_model();
        $m_status                = new Status_model();
        $m_detail_facilities                = new Detail_facilities_model();

        $report = $m_report->find($id);
        if (!$report) {
            return $this->failNotFound('Report not found');
        }
    }

    // edit
    public function edit($id_report = null)
    {
        $validation = \Config\Services::validation();

        $validation->setRules([
            'description' => 'required|string',
        ]);

        if (!$validation->withRequest($this->request)->run()) {
            return $this->failValidationErrors($validation->getErrors());
        }

        $m_report          = new Report_model();
        $m_classes                = new Classes_model();
        $m_building                = new Building_model();
        $m_status                = new Status_model();
        $m_pictures          = new Pictures_model();
        $m_detail_facilities                = new Detail_facilities_model();
        $classes   = $m_classes->listing();
        $status   = $m_status->listing();
        $detail_facilities   = $m_detail_facilities->listing();
        $report            = $m_report->detail($id_report);

        $report = $m_report->find($id_report);
        if (!$report) {
            return $this->failNotFound('Report not found');
        }

        $data = [
            'id_classes' => $this->request->getPost('id_classes'),
            'id_detail_facilities' => $this->request->getPost('id_detail_facilities'),
            'description' => $this->request->getPost('description'),
            'updated_at' => date('Y-m-d H:i:s'),
        ];
        $m_report->update($id_report, $data);

        if ($files = $this->request->getFiles()) {
            foreach ($files['pictures'] as $img) {
                if ($img->isValid() && !$img->hasMoved()) {
                    $newName = $img->getRandomName();
                    $img->move(WRITEPATH . 'uploads', $newName);

                    $latitude = $this->request->getPost('latitude');
                    $longitude = $this->request->getPost('longitude');

                    $imageData = [
                        'report_id' => $id_report,
                        'image_url' => $newName,
                        'uploaded_at' => date('Y-m-d H:i:s'),
                        'latitude' => $latitude,
                        'longitude' => $longitude,
                    ];
                    $m_pictures->insert($imageData);
                }
            }
        }

        // // Start validasi
        // if ($this->request->getMethod() === 'post' && $this->validate(
        //     [

        //         'description' => 'required'
        //     ]
        // )) {

        //     $data = [
        //         'id_report'          => $id_report,
        //         'id_classes' => $this->request->getVar('id_classes'),
        //         'id_status' => $this->request->getVar('id_status'),
        //         'id_detail_facilities' => $this->request->getVar('id_detail_facilities'),
        //         'description'       => $this->request->getVar('description'),
        //     ];
        //     $m_building->edit($data);

        //     return redirect()->to(base_url('admin/building'))->with('sukses', 'Data Berhasil di Simpan');
        // }

        return $this->respondUpdated(['message' => 'Report updated successfully']);
        // $data = [
        //     'title'        => 'Edit Nama Gedung Kuliah: ' . $building['nama_pj'],
        //     'pj' => $pj,
        //     'building'          => $building,
        //     'content'           => 'admin/building/edit',
        // ];
        // echo view('admin/layout/wrapper', $data);
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
    public function delete($id_report = null)
    {
        $m_report          = new Report_model();
        $m_classes                = new Classes_model();
        $m_status                = new Status_model();
        $m_pictures          = new Pictures_model();
        $m_detail_facilities                = new Detail_facilities_model();

        $report = $m_report->find($id_report);

        if (!$report) {
            return $this->failNotFound('Report not found');
        }

        $m_report->delete($id_report);
        $m_pictures->where('id_report', $id_report)->delete();

        return $this->respondDeleted(['message' => 'Report deleted successfully']);
    }

    public function listReports()
    {
        $m_report          = new Report_model();

        $report = $m_report->findAll();
        return $this->respond($report);
    }

    public function listBuilding()
    {
        $m_building = new Building_model();
        $building = $m_building->findAll();
        return $this->respond($building);
    }

    public function listClasses()
    {
        $m_classes = new Classes_model();
        $classes = $m_classes->findAll();
        return $this->respond($classes);
    }

    public function listDetailFacil()
    {
        $m_detail_facilities = new Detail_facilities_model();
        $detail_facilities = $m_detail_facilities->findAll();
        return $this->respond($detail_facilities);
    }
}
