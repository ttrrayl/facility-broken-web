<form action="<?= base_url('admin/classes/tambah') ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
	<?= csrf_field();
	?>

	<div class="form-group row">
		<label class="col-md-2">Nama Ruang Kelas</label>
		<div class="col-md-10">
			<input type="text" name="nama_classes" class="form-control" value="<?= set_value('nama_classes') ?>" required>
		</div>
	</div>

	<div class="form-group row">
		<label class="col-md-2">Nama Gedung Perkuliahan</label>
		<div class="col-md-3">
			<select name="id_building" class="form-control">
				<?php foreach ($building as $building) { ?>
					<option value="<?= $building['id_building'] ?>">
						<?= $building['nama_building'] ?>
					</option>
				<?php } ?>
			</select>
			<small class="text-secondary">Nama Gedung Perkuliahan</small>
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