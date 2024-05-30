<p>
	<a href="<?= base_url('admin/detail_facilities/tambah') ?>" class="btn btn-success">
		<i class="fa fa-plus"></i> Tambah Baru
	</a>
</p>

<table class="table table-bordered" id="example1">
	<thead>
		<tr>
			<th width="5%">No</th>
			<th width="30%">Nama Fasilitas</th>
			<th width="30%">Kategori Fasilitas</th>
			<th width="20%">Lokasi Fasilitas</th>
			<th width="10%">Jumlah</th>

		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

		foreach ($detail_facilities as $detail_facilities) { ?>
			<tr>
				<td><?= $no ?></td>
				<td><?= $detail_facilities['nama_detail_facilities'] ?></td>
				<td><?= $detail_facilities['type_facilities'] ?></td>
				<td><?= $detail_facilities['nama_classes'] ?></td>
				<td><?= $detail_facilities['quantity'] ?></td>

				<td>
					<a href="<?= base_url('admin/detail_facilities/edit/' . $detail_facilities['id_detail_facilities']) ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
					<a href="<?= base_url('admin/detail_facilities/delete/' . $detail_facilities['id_detail_facilities']) ?>" class="btn btn-red btn-sm" onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
		<?php $no++;
		} ?>
	</tbody>
</table>