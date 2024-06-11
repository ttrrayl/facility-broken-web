<table class="table table-bordered" id="example1">
	<thead>
		<tr>
			<th width="5%">No</th>
			<th width="20%">Pelapor</th>
			<th width="10%">Facilitas</th>
			<th width="8%">Lokasi</th>
			<th width="30%">Deskripsi</th>
			<th width="10%">Tanggal Laporan Masuk</th>
			<th width="10%">Tanggal Diupdate</th>
			<th width="8%">Status</th>

		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

		foreach ($report as $report) { ?>
			<tr>
				<td><?= $no ?></td>
				<td><?= $report['nama'] ?></td>
				<td><?= $report['nama_detail_facilities'] ?></td>
				<td><?= $report['nama_classes'] ?></td>
				<td><?= $report['description'] ?></td>
				<td><?= $report['tanggal_post'] ?></td>
				<td><?= $report['tanggal'] ?></td>
				<td><?= $report['nama_status'] ?></td>
			</tr>
		<?php $no++;
		} ?>
	</tbody>
</table>