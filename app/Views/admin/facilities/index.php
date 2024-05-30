<?php include 'tambah.php'; ?>
<table class="table table-bordered" id="example1">
	<thead>
		<tr>
			<th width="5%">No</th>
			<th width="55%">Jenis Fasilitias</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

		foreach ($facilities as $facilities) { ?>
			<tr>
				<td><?= $no ?></td>
				<td><?= $facilities['type_facilities'] ?></td>

				<td>
					<a href="<?= base_url('admin/facilities/edit/' . $facilities['id_facilities']) ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
					<a href="<?= base_url('admin/facilities/delete/' . $facilities['id_facilities']) ?>" class="btn btn-red btn-sm" onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
		<?php $no++;
		} ?>
	</tbody>
</table>