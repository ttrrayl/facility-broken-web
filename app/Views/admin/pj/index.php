<?php include 'tambah.php'; ?>
<table class="table table-bordered" id="example1">
	<thead>
		<tr>
			<th width="5%">No</th>
			<th width="25%">Nama</th>
			<th width="25%">Contact</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

		foreach ($pj as $pj) { ?>
			<tr>
				<td><?= $no ?></td>
				<td><?= $pj['nama'] ?></td>
				<td><?= $pj['contact'] ?>

				</td>

				<td>
					<a href="<?= base_url('admin/pj/edit/' . $pj['id_pj']) ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
					<a href="<?= base_url('admin/pj/delete/' . $pj['id_pj']) ?>" class="btn btn-red btn-sm" onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
		<?php $no++;
		} ?>
	</tbody>
</table>