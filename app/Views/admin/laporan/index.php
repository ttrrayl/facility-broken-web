<?php include 'tambah.php'; ?>
<table class="table table-bordered" id="example1">
	<thead>
		<tr>
			<th width="5%">No</th>
			<th width="10%">Tanggal Laporan</th>
			<th width="10%">Kategori Fasilitas</th>
			<th width="10%">Fasilitas</th>
			<th width="10%">Gedung</th>
			<th width="20%">Deskripsi</th>
			<th width="10%">Pelapor</th>
			<th width="10%">Status</th>
			<th width="10%">Terakhir Edit</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

		foreach ($laporan as $laporan) { ?>
			<tr>
				<td><?= $no ?></td>
				<!-- <td><?php if ($client['gambar'] === '') {
								echo '-';
							} else { ?>
				<img src="<?= base_url('assets/upload/client/thumbs/' . $client['gambar']) ?>" class="img img-thumbnail">
			<?php } ?>
			</td> -->
				<td><?= $laporan['tanggal_post'] ?></td>
				<td><?= $laporan[''] ?></td>
				<td><?= $laporan['pimpinan'] ?></td>
				<!-- <td><i class="fa fa-phone"></i> <?= $client['telepon'] ?>
				<br><i class="fa fa-envelope"></i> <?= $client['email'] ?>
				<br><i class="fa fa-globe"></i> <?= $client['website'] ?>
				<br><i class="fa fa-map"></i> <?= $client['alamat'] ?>
			</td> -->
				<td>
					<a href="<?= base_url('admin/client/edit/' . $client['id_client']) ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
					<a href="<?= base_url('admin/client/delete/' . $client['id_client']) ?>" class="btn btn-dark btn-sm" onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
		<?php $no++;
		} ?>
	</tbody>
</table>