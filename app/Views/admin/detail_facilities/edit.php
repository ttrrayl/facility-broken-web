<form action="<?= base_url('admin/detail_facilities/edit/' . $detail_facilities['id_detail_facilities']) ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
	<?= csrf_field();
	?>

	<div class="form-group row">
		<label class="col-2">Nama Fasilitas</label>
		<div class="col-10">
			<input type="text" name="nama_detail_facilities" class="form-control" value="<?= $detail_facilities['nama_detail_facilities'] ?>">
		</div>
	</div>

	<div class="form-group row">
		<label class="col-md-2">Kategori Fasilitas</label>
		<div class="col-md-3">
			<select name="id_facilities" class="form-control">
				<?php foreach ($facilities as $facilities) { ?>
					<option value="<?= $facilities['id_facilities'] ?>" <?php if ($facilities['id_facilities'] === $facilities['id_facilities']) {
																			echo 'selected';
																		} ?>>
						<?= $facilities['type_facilities'] ?>
					</option>
				<?php } ?>
			</select>
			<small class="text-secondary">Kategori Fasilitas</small>
		</div>
	</div>

	<div class="form-group row">
		<label class="col-md-2">Lokasi Fasilitas</label>
		<div class="col-md-3">
			<select name="id_classes" class="form-control">
				<?php foreach ($classes as $classes) { ?>
					<option value="<?= $classes['id_classes'] ?>" <?php if ($classes['id_classes'] === $classes['id_classes']) {
																		echo 'selected';
																	} ?>>
						<?= $classes['nama_classes'] ?>
					</option>
				<?php } ?>
			</select>
			<small class="text-secondary">Lokasi Fasilitas</small>
		</div>
	</div>

	<div class="form-group row">
		<label class="col-2">Jumlah</label>
		<div class="col-10">
			<input type="number" name="quantity" class="form-control" value="<?= $detail_facilities['quantity'] ?>">
		</div>
	</div>

	<div class="form-group row">
		<label class="col-3"></label>
		<div class="col-9">
			<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
		</div>
	</div>

	<?= form_close(); ?>