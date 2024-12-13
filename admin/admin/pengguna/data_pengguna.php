<!-- Main content -->
<section class="content">
	<div class="box box-primary">
		<div class="box-header with-border">
			<h3>Data Pegawai</h3>
		</div>
		<div class="box-header">
			<a href="?page=MyApp/add_pengguna" class="btn btn-primary">
				<i class="glyphicon glyphicon-plus"></i> Tambah Data</a>
		</div>
		<!-- /.box-header -->
		<div class="box-body">
			<div class="table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>No</th>
							<th>Nama</th>
							<th>Username</th>
							<th>Level</th>
							<th>Alamat</th>
							<th>Jenis Kelamin</th>
							<th>No Telp</th>
							<th>NIP</th>
							<th>Aksi</th>
						</tr>
					</thead>
					<tbody>

						<?php
						$no = 1;
						$sql = $koneksi->query("SELECT * FROM tb_pengguna");
						while ($data = $sql->fetch_assoc()) {
						?>

							<tr>
								<td><?php echo $no++; ?></td>
								<td><?php echo $data['nama_pengguna']; ?></td>
								<td><?php echo $data['username']; ?></td>
								<td><?php echo $data['level']; ?></td>
								<td><?php echo $data['alamat']; ?></td>
								<td><?php echo $data['jenis_kelamin']; ?></td>
								<td><?php echo $data['no_telp']; ?></td>
								<td><?php echo $data['nip']; ?></td>
								<td>
									<a href="?page=MyApp/edit_pengguna&kode=<?php echo $data['id_pengguna']; ?>" title="Ubah" class="btn btn-success">
										<i class="glyphicon glyphicon-edit"></i>
									</a>
									<a href="?page=MyApp/del_pengguna&kode=<?php echo $data['id_pengguna']; ?>" onclick="return confirm('Apakah anda yakin hapus data ini ?')" title="Hapus" class="btn btn-danger">
										<i class="glyphicon glyphicon-trash"></i>
									</a>
								</td>
							</tr>
						<?php
						}
						?>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</section>