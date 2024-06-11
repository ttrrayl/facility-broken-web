<?php include 'tambah.php'; ?>
<table class="table table-bordered" id="example1">
	<thead>
		<tr>
			<th width="5%">No</th>
			<th width="25%">Nama Status</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

		foreach ($status as $status) { ?>
			<tr>
				<td><?= $no ?></td>
				<td><?= $status['nama_status'] ?></td>

				<td>
					<a href="<?= base_url('admin/status/edit/' . $status['id_status']) ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
					<a href="<?= base_url('admin/status/delete/' . $status['id_status']) ?>" class="btn btn-red btn-sm" onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
		<?php $no++;
		} ?>
	</tbody>
</table>