<?php

namespace App\Models;

use CodeIgniter\Model;

class Client_model extends Model
{
    protected $table              = 'laporan';
    protected $primaryKey         = 'id_laporan';
    protected $returnType         = 'array';
    protected $useSoftDeletes     = false;
    protected $allowedFields      = [''];
    protected $useTimestamps      = false;
    protected $createdField       = 'tanggal_post';
    protected $updatedField       = 'tanggal';
    protected $deletedField       = 'deleted_at';
    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;

    // listing
    public function listing()
    {
        $builder = $this->db->table('laporan');
        $builder->select('berita.*, kategori.nama_kategori, kategori.slug_kategori, users.nama');
        $builder->join('kategori', 'kategori.id_kategori = berita.id_kategori', 'LEFT');
        $builder->join('users', 'users.id_user = berita.id_user', 'LEFT');
        $builder->orderBy('laporan.id_laporan', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();

        // $builder = $this->db->table('berita');
        // $builder->select('berita.*, kategori.nama_kategori, kategori.slug_kategori, users.nama');
        // $builder->join('kategori', 'kategori.id_kategori = berita.id_kategori', 'LEFT');
        // $builder->join('users', 'users.id_user = berita.id_user', 'LEFT');
        // $builder->orderBy('berita.id_berita', 'DESC');
        // $query = $builder->get();

        // return $query->getResultArray();
    }

    // home
    public function home()
    {
        $builder = $this->db->table('client');
        $builder->where('status_client', 'Publish');
        $builder->orderBy('client.id_client', 'DESC');
        $query = $builder->get();

        return $query->getResultArray();
    }

    // testimoni
    public function testimoni()
    {
        $builder = $this->db->table('client');
        $builder->where('status_client', 'Publish');
        $builder->orderBy('client.id_client', 'DESC');
        $builder->limit(10);
        $query = $builder->get();

        return $query->getResultArray();
    }

    // total
    public function total()
    {
        $builder = $this->db->table('client');
        $builder->select('COUNT(*) AS total');
        $builder->orderBy('client.id_client', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // detail
    public function detail($id_client)
    {
        $builder = $this->db->table('client');
        $builder->where('id_client', $id_client);
        $builder->orderBy('client.id_client', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // read
    public function read($slug_client)
    {
        $builder = $this->db->table('client');
        $builder->where('slug_client', $slug_client);
        $builder->orderBy('client.id_client', 'DESC');
        $query = $builder->get();

        return $query->getRowArray();
    }

    // tambah
    public function tambah($data)
    {
        $builder = $this->db->table('client');
        $builder->insert($data);
    }

    // tambah
    public function edit($data)
    {
        $builder = $this->db->table('client');
        $builder->where('id_client', $data['id_client']);
        $builder->update($data);
    }
}
