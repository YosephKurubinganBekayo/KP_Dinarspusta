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
			<a href="?page=add_sirkul" title="Tambah Data" class="btn btn-primary">
				<i class="glyphicon glyphicon-plus"></i> Tambah Data</a>
		</div>
		<!-- /.box-header -->
		<div class="box-body">
			<div class="table-responsive">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>No</th>
							<th>Nama Peminjam</th>
							<th>Buku</th>
							<th>Tgl Pinjam</th>
							<th>Aksi</th>
						</tr>
					</thead>
					<tbody>
						<?php
						$no = 1;
						$sql = $koneksi->query("
						SELECT 
						s.id_sk,
						a.id_anggota,
						a.nama AS nama_peminjam,
						GROUP_CONCAT(b.judul_buku SEPARATOR ', ') AS judul_buku,
						s.tgl_pinjam
				FROM 
						tb_sirkulasi s
				INNER JOIN 
						tb_anggota a ON s.id_anggota = a.id_anggota
				INNER JOIN 
						buku b ON s.id_buku = b.no_induk
				WHERE 
						s.status = 'PIN'
				GROUP BY 
						s.id_anggota, s.tgl_pinjam
				ORDER BY 
						s.tgl_pinjam DESC;				
						");

						while ($data = $sql->fetch_assoc()) {
						?>
							<tr>
								<td><?php echo $no++; ?></td>
								<td><?php echo $data['nama_peminjam']; ?></td>
								<td><?php echo $data['judul_buku']; ?></td>
								<td><?php echo date("d/M/Y", strtotime($data['tgl_pinjam'])); ?></td>
								<td>
									<a href="?page=MyApp/data_sirkul_detail&kode=<?php echo $data['id_anggota']; ?>&tanggal=<?php echo $data['tgl_pinjam']; ?>" title="Detail Riwayat" class="btn btn-primary">
										<i class="glyphicon glyphicon-eye-open"></i>
									</a>
								</td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<h4> *Note
		<br> Masa peminjaman buku adalah <span style="color:red; font-weight:bold;">7 hari</span> dari tanggal peminjaman.
		<br> Jika buku dikembalikan lebih dari masa peminjaman, maka akan dikenakan <span style="color:red; font-weight:bold;">denda</span>
		<br> sebesar <span style="color:red; font-weight:bold;">Rp 1.000/hari</span>.
	</h4>
</section>