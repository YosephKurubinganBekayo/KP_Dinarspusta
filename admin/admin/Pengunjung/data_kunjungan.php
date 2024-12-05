<section class="content-header" style="text-align: center;">
	<h1>
		Riwayat Kunjungan
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
			<a href="?page=MyApp/add_kunjungan" title="Tambah Riwayat Pembacaan" class="btn btn-primary">
				<i class="glyphicon glyphicon-plus"></i> Tambah Riwayat</a>
			<a href="?page=MyApp/print_all_reading" title="Print Riwayat" class="btn btn-success">
				<i class="glyphicon glyphicon-print"></i> Print</a>
		</div>
		<!-- /.box-header -->
		<div class="box-body">
			<div class="table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>No</th>
							<th>Id Pengunjung</th>
							<th>Nama Pengunjung</th>
							<th>Judul Buku</th>
							<th>Tanggal Kunjung</th>
							<th>Kelola</th>
						</tr>
					</thead>
					<tbody>

						<?php
						$no = 1;
						// Query untuk menampilkan riwayat pembacaan berdasarkan pengunjung dan buku yang dibaca
						$sql = $koneksi->query("
								SELECT 
										pb.id,
										pb.pengunjung_NIK AS NIK, 
										p.nama AS pengunjung_nama, 
										GROUP_CONCAT(b.judul_buku SEPARATOR ', ') AS judul_buku, 
										pb.tanggal_baca 
								FROM 
										pengunjung_buku pb
								JOIN 
										pengunjung p ON pb.pengunjung_NIK = p.NIK
								JOIN 
										buku b ON pb.id_buku = b.no_induk
								GROUP BY 
										pb.pengunjung_NIK, pb.tanggal_baca
						");

						while ($data = $sql->fetch_assoc()) {
						?>

							<tr>
								<td><?php echo $no++; ?></td>
								<td><?php echo $data['NIK']; ?></td>
								<td><?php echo $data['pengunjung_nama']; ?></td>
								<td><?php echo $data['judul_buku']; ?></td>
								<td><?php echo $data['tanggal_baca']; ?></td>

								<td>
									<a href="?page=MyApp/edit_kunjungan&nik=<?php echo $data['NIK']; ?>&tanggal=<?php echo $data['tanggal_baca']; ?>" title="Ubah Riwayat" class="btn btn-success">
										<i class="glyphicon glyphicon-edit"></i>
									</a>
									<a href="?page=MyApp/del_kunjungan&&nik=<?php echo $data['NIK']; ?>&tanggal=<?php echo $data['tanggal_baca']; ?>" onclick="return confirm('Yakin Hapus Data Ini ?')" title="Hapus" class="btn btn-danger">
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