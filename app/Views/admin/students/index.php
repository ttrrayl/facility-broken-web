<table class="table table-bordered" id="example1">
	<thead>
		<tr>
			<th width="5%">No</th>
			<th width="25%">Email</th>
			<th width="25%">Username</th>
			<th width="25%">Tanggal Daftar</th>
		</tr>
	</thead>
	<tbody>
		<?php $no = 1;

		foreach ($students as $students) { ?>
			<tr>
				<td><?= $no ?></td>
				<td><?= $students['email'] ?></td>
				<td><?= $students['username'] ?></td>
				<td><?= $students['created_at'] ?></td>




			</tr>
		<?php $no++;
		} ?>
	</tbody>
</table>