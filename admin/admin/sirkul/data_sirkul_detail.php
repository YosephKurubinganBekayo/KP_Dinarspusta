<?php 
if (isset($_GET['kode'])) {
	$id_anggota = $_GET['kode'];
	$tgl_pinjam = $_GET['tanggal'];} ?>
<section class="content-header">
	<h1>
		Sirkulasi
		<small>Buku</small>
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
			<a href="?page=data_sirkul" title="Tambah Data" class="btn btn-primary">
				<i class=""></i> Kembali</a>
		</div>
		<!-- /.box-header -->
		<div class="box-body">
			<div class="table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>No</th>
							<th>ID Transaksi</th>
							<th>Buku</th>
							<th>Peminjam</th>
							<th>Tgl Pinjam</th>
							<th>Jatuh Tempo</th>
							<th>Dilayani</th>
							<th>Kelola</th>
						</tr>
					</thead>
					<tbody>

						<?php

						$no = 1;
						$sql = $koneksi->query("SELECT s.id_sk, b.judul_buku,
				  a.id_anggota,
				  a.nama,
				  s.tgl_pinjam, 
				  s.tgl_kembali,
				  p.nama_pegawai
                  from tb_sirkulasi s inner join buku b on s.id_buku=b.no_induk
				  inner join tb_anggota a on s.id_anggota=a.id_anggota 
					inner join pegawai p on s.id_petugas=p.id 
					where status='PIN' AND s.id_anggota = '$id_anggota' AND s.tgl_pinjam = '$tgl_pinjam'  order by tgl_pinjam desc, id_sk asc");
						while ($data = $sql->fetch_assoc()) {
						?>

							<tr>
								<td>
									<?php echo $no++; ?>
								</td>
								<td>
									<?php echo $data['id_sk']; ?>
								</td>
								<td>
									<?php echo $data['judul_buku']; ?>
								</td>
								<td>
									<?php echo $data['id_anggota']; ?>
									-
									<?php echo $data['nama']; ?>
								</td>
								<td>
									<?php $tgl = $data['tgl_pinjam'];
									echo date("d/M/Y", strtotime($tgl)) ?>
								</td>
								<td>
									<?php $tgl = $data['tgl_kembali'];
									echo date("d/M/Y", strtotime($tgl)) ?>
								</td>
								<td>
									<?php echo $data['nama_pegawai'];
									?>
								</td>

								

							<td>
								<a href="?page=panjang&kode=<?php echo $data['id_sk']; ?>" onclick="return confirm('Perpanjang Data Ini ?')" title="Perpanjang" class="btn btn-success">
									<i class="glyphicon glyphicon-upload"></i>
								</a>
								<a href="?page=kembali&kode=<?php echo $data['id_sk']; ?>" onclick="return confirm('Kembalikan Buku Ini ?')" title="Kembalikan" class="btn btn-danger">
									<i class="glyphicon glyphicon-download"></i>
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