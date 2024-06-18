<?php $session = \Config\Services::session();

use App\Models\Dasbor_model;

$m_dasbor = new Dasbor_model();
?>
<div class="alert alert-info">
  <h4>Hai <em class="text-warning"><?= $session->get('nama') ?></em></h4>
  <hr>
  <p>Website Laporan Kerusakan Fasililtas di Gedung Perkuliahan di Universitas Andalas</p>
</div>

<!-- Info boxes -->
<div class="row">
  <div class="col-12 col-sm-6 col-md-4">
    <div class="info-box">
      <span class="info-box-icon bg-info elevation-1"><i class="fas fa-building"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Gedung Perkuliahan</span>
        <span class="info-box-number">
          <?= angka($m_dasbor->nama_building()) ?>
          <!-- <small>Konten</small> -->
        </span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>
  <!-- /.col -->
  <div class="col-12 col-sm-6 col-md-4">
    <div class="info-box mb-3">
      <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-tags"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">PJ Gedung</span>
        <span class="info-box-number"><?= angka($m_dasbor->pj()) ?></span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>
  <!-- /.col -->

  <div class="col-12 col-sm-6 col-md-4">
    <div class="info-box mb-3">
      <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-chalkboard-teacher"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Ruang Kelas</span>
        <span class="info-box-number"><?= angka($m_dasbor->classes()) ?></span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>
  <!-- /.col -->
</div>

<!-- fix for small devices only -->
<div class="row">
  <div class="clearfix hidden-md-up"></div>

  <div class="col-12 col-sm-6 col-md-4">
    <div class="info-box mb-3">
      <span class="info-box-icon bg-success elevation-1"><i class="fas fa-cubes"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Fasilitas</span>
        <span class="info-box-number"><?= angka($m_dasbor->facilities()) ?></span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>
  <!-- /.col -->

  <!-- /.row -->


  <!-- /.col -->
  <div class="col-12 col-sm-6 col-md-4">
    <div class="info-box mb-3">
      <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-building"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Total Laporan Masuk</span>
        <span class="info-box-number"><?= angka($m_dasbor->report()) ?></span>
      </div>
      <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
  </div>


  <!-- /.col -->
  <div class="col-12 col-sm-6 col-md-4">
    <div class="info-box mb-3">
      <span class="info-box-icon bg-success elevation-1"><i class="fas fa-building"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Total User</span>
        <span class="info-box-number"><?= angka($m_dasbor->student()) ?></span>
      </div>
      <!-- /.info-box-content -->
    </div>
  </div>
</div>
<!-- /.info-box -->





<!-- /.row -->