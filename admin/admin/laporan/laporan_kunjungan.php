<section class="content-header">


</section>
<!-- Main content -->
<section class="content">
	<div class="box box-primary">

		<!-- <div class="box-header with-border">
			<a href="?page=MyApp/print_laporan" title="Print" class="btn btn-success" style="color : green;">
				<i class="glyphicon glyphicon-print"></i>Print</a>
		</div> -->
		<!-- /.box-header -->

		<div class="box-body">
			<h1>
				Laporan Sirkulasi
			</h1>
			<p>Cetak Laporan</p>
			<div class="table-responsive">
				<table id="tabel_laporan1" class="table table-bordered table-striped" data-title="Laporan Sirkulasi">
					<thead>
						<tr>
							<th>No</th>
							<th>ID SKL</th>
							<th>Buku</th>
							<th>Peminjam</th>
							<th>Tgl Pinjam</th>
							<th>Jatuh Tempo</th>
							<th>Tgl dikembalikan</th>
						</tr>
					</thead>
					<tbody>

						<?php
						// Jalankan query
						$sql = mysqli_query($koneksi, "SELECT tb_sirkulasi.id_buku, 
						buku.judul_buku, 
						tb_anggota.id_anggota,
						tb_anggota.nama,
						tb_sirkulasi.id_sk,
						tb_sirkulasi.tgl_pinjam,
						tb_sirkulasi.tgl_kembali,
						tb_sirkulasi.tgl_dikembalikan,
						IF(DATEDIFF(NOW(), tb_sirkulasi.tgl_kembali) <= 0, 0, DATEDIFF(NOW(), tb_sirkulasi.tgl_kembali)) AS telat_pengembalian 
						FROM tb_sirkulasi 
						JOIN tb_anggota ON tb_anggota.id_anggota = tb_sirkulasi.id_anggota 
						JOIN buku ON buku.no_induk= tb_sirkulasi.id_buku 
						WHERE tb_sirkulasi.status = 'KEM'
						ORDER BY id_anggota");

						// Cek apakah query berhasil
						if (!$sql) {
							die("Query gagal: " . mysqli_error($koneksi));
						}

						// Inisialisasi variabel
						$no = 0;

						while ($data = mysqli_fetch_array($sql, MYSQLI_ASSOC)) {
							$no++;

							echo '<tr>
							<td>' . $no . '</td>
							<td>' . $data['id_sk'] . '</td>
							<td>' . $data['judul_buku'] . '</td>
							<td>' . $data['nama'] . '</td>
							<td>' . date_format(new DateTime($data['tgl_pinjam']), 'd/M/Y') . '</td>
							<td>' . date_format(new DateTime($data['tgl_kembali']), 'd/M/Y') . '</td>
							<td>' . date_format(new DateTime($data['tgl_dikembalikan']), 'd/M/Y') . '</td>
						</tr>';
						}
						?>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>