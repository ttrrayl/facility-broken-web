<?= form_open(base_url('admin/pj/edit/' . $pj['id_pj']));
echo csrf_field();
?>

<div class="form-group row">
	<label class="col-3">Nama pj</label>
	<div class="col-9">
		<input type="text" name="nama_pj" class="form-control" placeholder="Nama pj" value="<?= $pj['nama_pj'] ?>" required>
	</div>
</div>

<div class="form-group row">
	<label class="col-3">Contact</label>
	<div class="col-9">
		<input type="text" name="contact" class="form-control" placeholder="contact" value="<?= $pj['contact'] ?>" required>
		<small class="text-secondary"><span class="text-warning">Gunakan format 08xxxxxxx</span></small>
	</div>
</div>


<div class="form-group row">
	<label class="col-3"></label>
	<div class="col-9">
		<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
	</div>
</div>

<?= form_close(); ?>