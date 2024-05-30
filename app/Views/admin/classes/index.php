<p>
	<a href="<?= base_url('admin/classes/tambah') ?>" class="btn btn-success">
		<i class="fa fa-plus"></i> Tambah Baru
	</a>
</p>

<table class="table table-bordered" id="example1">
	<thead>
		<tr>
			<th width="5%">No</th>
			<th width="30%">Nama Ruang Kelas</th>
			<th width="35%">Nama Gedung Kuliah</th>

		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

		foreach ($classes as $classes) { ?>
			<tr>
				<td><?= $no ?></td>
				<td><?= $classes['nama_classes'] ?></td>
				<td><?= $classes['nama_building'] ?></td>

				<td>
					<a href="<?= base_url('admin/classes/edit/' . $classes['id_classes']) ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
					<a href="<?= base_url('admin/classes/delete/' . $classes['id_classes']) ?>" class="btn btn-red btn-sm" onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
		<?php $no++;
		} ?>
	</tbody>
</table>