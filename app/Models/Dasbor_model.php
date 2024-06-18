<?php

namespace App\Models;

use CodeIgniter\Model;

class Dasbor_model extends Model
{
    //gedung
    public function nama_building()
    {
        $builder = $this->db->table('building');
        $query   = $builder->get();

        return $query->getNumRows();
    }

    //mahasiswa
    public function student()
    {
        $builder = $this->db->table('students');
        $query   = $builder->get();

        return $query->getNumRows();
    }

    // kelas
    public function classes()
    {
        $builder = $this->db->table('classes');
        $query   = $builder->get();

        return $query->getNumRows();
    }

    // fasilitas
    public function facilities()
    {
        $builder = $this->db->table('detail_facilities');
        $query   = $builder->get();

        return $query->getNumRows();
    }

    // pj
    public function pj()
    {
        $builder = $this->db->table('pj');
        $query   = $builder->get();

        return $query->getNumRows();
    }

    // laporan
    public function report()
    {
        $builder = $this->db->table('report');
        $query   = $builder->get();

        return $query->getNumRows();
    }
}
