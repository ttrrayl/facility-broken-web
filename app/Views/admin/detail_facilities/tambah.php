<form action="<?= base_url('admin/detail_facilities/tambah') ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
	<?= csrf_field();
	?>

	<div class="form-group row">
		<label class="col-md-2">Nama Fasilitas</label>
		<div class="col-md-10">
			<input type="text" name="nama_detail_facilities" class="form-control" value="<?= set_value('nama_detail_facilities') ?>" required>
		</div>
	</div>

	<div class="form-group row">
		<label class="col-md-2">Kategori Fasilitas</label>
		<div class="col-md-3">
			<select name="id_facilities" class="form-control">
				<?php foreach ($facilities as $facilities) { ?>
					<option value="<?= $facilities['id_facilities'] ?>">
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
					<option value="<?= $classes['id_classes'] ?>">
						<?= $classes['nama_classes'] ?>
					</option>
				<?php } ?>
			</select>
			<small class="text-secondary">Lokasi Fasilitas</small>
		</div>
	</div>

	<div class="form-group row">
		<label class="col-md-2">Jumlah</label>
		<div class="col-md-10">
			<input type="number" name="quantity" class="form-control" value="<?= set_value('quantity') ?>" required>
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