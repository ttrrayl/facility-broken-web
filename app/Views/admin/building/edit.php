<form action="<?= base_url('admin/building/edit/' . $building['id_building']) ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
	<?= csrf_field();
	?>

	<div class="form-group row">
		<label class="col-md-2">Nama Penanggung Jawab</label>
		<div class="col-md-3">
			<select name="id_pj" class="form-control">
				<?php foreach ($pj as $pj) { ?>
					<option value="<?= $pj['id_pj'] ?>" <?php if ($building['id_pj'] === $pj['id_pj']) {
															echo 'selected';
														} ?>>
						<?= $pj['nama_pj'] ?>
					</option>
				<?php } ?>
			</select>
			<small class="text-secondary">Nama Penanggung Jawab</small>
		</div>
	</div>

	<div class="form-group row">
		<label class="col-2">Nama Gedung Kuliah</label>
		<div class="col-10">
			<input type="text" name="nama_building" class="form-control" value="<?= $building['nama_building'] ?>">
		</div>
	</div>


	<div class="form-group row">
		<label class="col-3"></label>
		<div class="col-9">
			<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
		</div>
	</div>

	<?= form_close(); ?>