<form action="<?= base_url('admin/classes/edit/' . $classes['id_classes']) ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
	<?= csrf_field();
	?>

	<div class="form-group row">
		<label class="col-2">Nama Ruang Kelas</label>
		<div class="col-10">
			<input type="text" name="nama_classes" class="form-control" value="<?= $classes['nama_classes'] ?>">
		</div>
	</div>

	<div class="form-group row">
		<label class="col-md-2">Nama Gedung Perkuliahan</label>
		<div class="col-md-3">
			<select name="id_pj" class="form-control">
				<?php foreach ($building as $building) { ?>
					<option value="<?= $building['id_building'] ?>" <?php if ($building['id_building'] === $building['id_building']) {
																		echo 'selected';
																	} ?>>
						<?= $building['nama_building'] ?>
					</option>
				<?php } ?>
			</select>
			<small class="text-secondary">Nama Gedung Perkuliahan</small>
		</div>
	</div>

	<div class="form-group row">
		<label class="col-3"></label>
		<div class="col-9">
			<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
		</div>
	</div>

	<?= form_close(); ?>