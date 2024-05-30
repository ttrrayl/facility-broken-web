<?= form_open(base_url('admin/facilities/edit/' . $facilities['id_facilities']));
echo csrf_field();
?>

<div class="form-group row">
	<label class="col-3">Jenis Fasilitas</label>
	<div class="col-9">
		<input type="text" name="type_facilities" class="form-control" placeholder="Jenis Fasilitas" value="<?= $facilities['type_facilities'] ?>" required>
	</div>
</div>


<div class="form-group row">
	<label class="col-3"></label>
	<div class="col-9">
		<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
	</div>
</div>

<?= form_close(); ?>