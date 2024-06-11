<?= form_open(base_url('admin/status/edit/' . $status['id_status']));
echo csrf_field();
?>

<div class="form-group row">
	<label class="col-3">Nama status</label>
	<div class="col-9">
		<input type="text" name="nama_status" class="form-control" placeholder="Nama status" value="<?= $status['nama_status'] ?>" required>
	</div>
</div>

<div class="form-group row">
	<label class="col-3"></label>
	<div class="col-9">
		<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
	</div>
</div>

<?= form_close(); ?>