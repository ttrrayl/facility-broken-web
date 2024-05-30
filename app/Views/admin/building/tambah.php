<!-- <p>
	<button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-default">
		<i class="fa fa-plus"></i> Tambah Baru
	</button>
</p>
<?= form_open(base_url('admin/building'));
echo csrf_field();
?> -->

<form action="<?= base_url('admin/building/tambah') ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
	<?= csrf_field();
	?>

	<div class="form-group row">
		<label class="col-md-2">Nama Penanggung Jawab</label>
		<div class="col-md-3">
			<select name="id_pj" class="form-control">
				<?php foreach ($pj as $pj) { ?>
					<option value="<?= $pj['id_pj'] ?>">
						<?= $pj['nama_pj'] ?>
					</option>
				<?php } ?>
			</select>
			<small class="text-secondary">Nama Penanggung Jawab</small>
		</div>
	</div>

	<div class="form-group row">
		<label class="col-md-2">Nama Gedung Perkuliahan</label>
		<div class="col-md-10">
			<input type="text" name="nama_building" class="form-control" value="<?= set_value('nama_building') ?>" required>
		</div>
	</div>

	<div class="form-group row">
		<label class="col-md-2"></label>
		<div class="col-md-10">
			<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
		</div>
	</div>


	<!-- /.modal -->
	<?= form_close(); ?>