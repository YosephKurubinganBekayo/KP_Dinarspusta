<section class="content-header" style="text-align: center;">
	<h1>
		Data Anggota
	</h1>
	<ol class="breadcrumb">
		<li>
			<a href="index.php">
				<i class="fa fa-home"></i>
				<b>Si Perpustakaan</b>
			</a>
		</li>
	</ol>
</section>
<!-- Main content -->
<section class="content">
	<div class="box box-primary">
		<div class="box-header with-border">
<<<<<<< HEAD
=======

>>>>>>> 8dd891148cd42410828402b95bb2f54f4ed413bb
			<a href="?page=MyApp/print_allagt" title="Print" class="btn btn-success" stlye="color : green;">
				<i class="glyphicon glyphicon-print"></i>Print</a>
		</div>
		<!-- /.box-header -->
		<div class="box-body">
			<div class="table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>No</th>
							<th>Id Anggota</th>
							<th>NIK</th>
							<th>Nama</th>
							<th>JK</th>
							<th>Alamat</th>
							<th>No HP</th>
							<th>Pekerjaan</th>
							<th>Instansi</th>
							<th>Kelola</th>
						</tr>
					</thead>
					<tbody>

						<?php
						$no = 1;
						$sql = $koneksi->query("SELECT * from tb_anggota");
						while ($data = $sql->fetch_assoc()) {
						?>

							<tr>
								<td>
									<?php echo $no++; ?>
								</td>
								<td>
									<?php echo $data['id_anggota']; ?>
								</td>
								<td>
									<?php echo $data['nik']; ?>
								</td>
								<td>
									<?php echo $data['nama']; ?>
								</td>
								<td>
									<?php echo $data['jekel']; ?>
								</td>
								<td>
									<?php echo $data['alamat']; ?>
								</td>
								<td>
									<?php echo $data['no_hp']; ?>
								</td>
								<td>
									<?php echo $data['pekerjaan']; ?>
								</td>
								<td>
									<?php echo $data['instansi']; ?>
								</td>
								<td>
									<a href="?page=MyApp/edit_agt&kode=<?php echo $data['id_anggota']; ?>" title="Ubah Data" class="btn btn-success">
										<i class="glyphicon glyphicon-edit"></i>
									</a>

									<a href="?page=MyApp/del_agt&kode=<?php echo $data['id_anggota']; ?>" onclick="return confirm('Yakin Hapus Data Ini ?')" title="Hapus" class="btn btn-danger">
										<i class="glyphicon glyphicon-trash"></i>
									</a>

									<a href="?page=MyApp/print_agt&kode=<?php echo $data['id_anggota'] ?>" title="print" target="_blank"><button class="btn btn-primary">
											<i class="fa fa-print"></i>
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