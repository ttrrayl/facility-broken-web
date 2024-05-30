<p>
	<a href="<?= base_url('admin/building/tambah') ?>" class="btn btn-success">
		<i class="fa fa-plus"></i> Tambah Baru
	</a>
</p>

<table class="table table-bordered" id="example1">
	<thead>
		<tr>
			<th width="5%">No</th>
			<th width="50%">Nama Penanggung Jawab</th>
			<th width="30%">Nama Gedung Kuliah</th>

		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

		foreach ($building as $building) { ?>
			<tr>
				<td><?= $no ?></td>
				<td><?= $building['nama_pj'] ?></td>
				<td><?= $building['nama_building'] ?></td>

				<td>
					<a href="<?= base_url('admin/building/edit/' . $building['id_building']) ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
					<a href="<?= base_url('admin/building/delete/' . $building['id_building']) ?>" class="btn btn-red btn-sm" onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
		<?php $no++;
		} ?>
	</tbody>
</table>