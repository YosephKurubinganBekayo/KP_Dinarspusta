<section class="content-header">


</section>
<!-- Main content -->
<section class="content">
	<div class="box box-primary">
		<div class="box-header with-border">
			<center>
				<h1>
					Laporan Transaksi
				</h1>
			</center>
		</div>
		<?php  // Mendapatkan nilai filter dari input GET
		$bulanFilter = isset($_GET['bulan1']) ? $_GET['bulan1'] : '';
		$tahunFilter = isset($_GET['tahun1']) ? $_GET['tahun1'] : '';
		$jenisFilter = isset($_GET['jenis1']) ? $_GET['jenis1'] : ''; ?>
		<div class="box-body">
			<h3 class="box-header with-border">Laporan Buku Terpopuler</h3>
			<div class="text-right mb-3" style="padding: 20px;">
				<button class="btn btn-primary" data-toggle="modal" data-target="#filterModal_data_buku">Filter Data</button>
				<?php if ($bulanFilter || $tahunFilter || $jenisFilter) : ?>
					<a href="index.php?page=admin" class="btn btn-danger">Hapus Filter</a>
				<?php endif; ?>
			</div>
			<p>Cetak Laporan</p>
			<div class="row">
				<div class="col-md-8 ">
					<div class="table-responsive">
						<table id="tabel_laporan1" class="table table-bordered table-striped" data-title="Laporan buku Terporpuler Teraktif">
							<thead>
								<tr>
									<th>No</th>
									<th>Judul</th>
									<th>Penulis</th>
									<th>Jumlah Dipinjam</th>

								</tr>
							</thead>
							<tbody>

								<?php
								// Jalankan query

								$sql = $koneksi->query("
        			SELECT b.judul_buku, b.pengarang,b.penerbit, COUNT(s.id_buku) as jumlah_peminjaman
                    FROM buku b
                    JOIN log_pinjam s ON b.no_induk = s.id_buku
                    GROUP BY s.id_buku
                    ORDER BY jumlah_peminjaman DESC
                    LIMIT 5");

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
							<td>' . $data['judul_buku'] . '</td>
							<td>' . $data['pengarang'] . '</td>
							<td>' . $data['jumlah_peminjaman'] . '</td>
													</tr>';
								}
								?>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box box-info" style="height: 100%;">
						<div class="box-header with-border">
							<h3 class="box-title">Grafik Buku Terpopuler</h3>
						</div>
						<div class="box-body">
							<canvas id="chartBuku"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="box box-primary">

		<div class="box-body">
			<h3 class="box-header with-border">Laporan Anggota Teraktif</h3>
			<div class="text-right mb-3" style="padding: 20px;">
				<button class="btn btn-primary" data-toggle="modal" data-target="#filterModal_data_anggota">Filter Data</button>
				<?php if ($bulanFilter || $tahunFilter || $jenisFilter) : ?>
					<a href="index.php?page=admin" class="btn btn-danger">Hapus Filter</a>
				<?php endif; ?>
			</div>

			<p>Cetak Laporan</p>
			<div class="row">
				<div class="col-md-6">
					<div class="table-responsive">
						<table id="tabel_laporan2" class="table table-bordered table-striped" data-title="Laporan Anggota Teraktif">
							<thead>
								<tr>
									<th>No</th>
									<th>Nama Anggota</th>
									<th>Jumlah Peminjaman</th>

								</tr>
							</thead>
							<tbody>

								<?php
								// Jalankan query

								$sql = $koneksi->query("
								SELECT a.nama, COUNT(s.id_anggota) as jumlah_peminjaman
								FROM tb_anggota a
								JOIN log_pinjam s ON a.id_anggota = s.id_anggota
								GROUP BY s.id_anggota
								ORDER BY jumlah_peminjaman DESC
								LIMIT 10");

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
									<td>' . $data['nama'] . '</td>
									<td>' . $data['jumlah_peminjaman'] . '</td>

															</tr>';
								}
								?>

							</tbody>
						</table>
					</div>
				</div>
				<div class="col-md-6">
					<div class="box box-info">
						<div class="box-header with-border">
							<h3 class="box-title">Grafik Anggota Teraktif</h3>

						</div>
						<div class="box-body">
							<canvas id="chartAnggota"></canvas>
						</div>
					</div>
				</div>
			</div>
			<script>
				// Data Buku Terpopuler
				<?php
				$labelsBuku = [];
				$dataBuku = [];
				$query_buku_populer = $koneksi->query("
                    SELECT b.judul_buku, COUNT(s.id_buku) as jumlah_peminjaman
                    FROM buku b
                    JOIN log_pinjam s ON b.no_induk = s.id_buku
                    GROUP BY s.id_buku
                    ORDER BY jumlah_peminjaman DESC
                    LIMIT 5
                ");
				while ($row = $query_buku_populer->fetch_assoc()) {
					$labelsBuku[] = $row['judul_buku'];
					$dataBuku[] = $row['jumlah_peminjaman'];
				}
				?>
				const labelsBuku = <?= json_encode($labelsBuku); ?>;
				const dataBuku = <?= json_encode($dataBuku); ?>;

				// Data Anggota Teraktif
				<?php
				$labelsAnggota = [];
				$dataAnggota = [];
				$query_anggota_aktif = $koneksi->query("
                        SELECT a.nama, COUNT(s.id_anggota) as jumlah_peminjaman
                        FROM tb_anggota a
                        JOIN log_pinjam s ON a.id_anggota = s.id_anggota
                        GROUP BY s.id_anggota
                        ORDER BY jumlah_peminjaman DESC
                        LIMIT 5
                    ");
				while ($row = $query_anggota_aktif->fetch_assoc()) {
					$labelsAnggota[] = $row['nama'];
					$dataAnggota[] = $row['jumlah_peminjaman'];
				}
				?>
				const labelsAnggota = <?= json_encode($labelsAnggota); ?>;
				const dataAnggota = <?= json_encode($dataAnggota); ?>;

				// Chart Buku Terpopuler
				const ctxBuku = document.getElementById('chartBuku').getContext('2d');
				new Chart(ctxBuku, {
					type: 'bar',
					data: {
						labels: labelsBuku,
						datasets: [{
							label: 'Jumlah Peminjaman',
							data: dataBuku,
							backgroundColor: 'rgba(75, 192, 192, 0.2)',
							borderColor: 'rgba(75, 192, 192, 1)',
							borderWidth: 1
						}]
					},
					options: {
						responsive: true,
						plugins: {
							legend: {
								position: 'top',
							},
						},
						scales: {
							x: {
								ticks: {
									display: false // Menyembunyikan label di sumbu X
								},
								grid: {
									display: false // Menyembunyikan garis grid pada sumbu X
								}
							},
							y: {
								beginAtZero: true
							}
						},
					}
				});

				// Chart Anggota Teraktif
				const ctxAnggota = document.getElementById('chartAnggota').getContext('2d');
				new Chart(ctxAnggota, {
					type: 'bar',
					data: {
						labels: labelsAnggota,
						datasets: [{
							label: 'Jumlah Peminjaman',
							data: dataAnggota,
							backgroundColor: 'rgba(255, 99, 132, 0.2)',
							borderColor: 'rgba(255, 99, 132, 1)',
							borderWidth: 1
						}]
					},
					options: {
						responsive: true,
						plugins: {
							legend: {
								position: 'top',
							},
						},
						scales: {
							x: {
								ticks: {
									display: false // Menyembunyikan label di sumbu X
								},
								grid: {
									display: false // Menyembunyikan garis grid pada sumbu X
								}
							},
							y: {
								beginAtZero: true
							}
						},
					}
				});
			</script>
		</div>
	</div>
	<div class="box box-primary">

		<!-- <div class="box-header with-border">
			<a href="?page=MyApp/print_laporan" title="Print" class="btn btn-success" style="color : green;">
				<i class="glyphicon glyphicon-print"></i>Print</a>
		</div> -->
		<!-- /.box-header -->

		<div class="box-body">
			<h3 class="box-header with-border">Laporan Semua Transaksi</h3>

			<div class="text-right mb-3" style="padding: 20px;">
				<button class="btn btn-primary" data-toggle="modal" data-target="#filterModal_data_transaksi">Filter Data</button>
				<?php if ($bulanFilter || $tahunFilter || $jenisFilter) : ?>
					<a href="index.php?page=admin" class="btn btn-danger">Hapus Filter</a>
				<?php endif; ?>
			</div>
			<p>Cetak Laporan</p>
			<div class="table-responsive">
				<table id="tabel_laporan3" class="table table-bordered table-striped" data-title="Laporan Sirkulasi">
					<thead>
						<tr>
							<th>No</th>
							<th>ID SKL</th>
							<th>Buku</th>
							<th>Peminjam</th>
							<th>Tgl Pinjam</th>
							<th>Peminjaman Kepada</th>
							<th>Jatuh Tempo</th>
							<th>Tgl dikembalikan</th>
							<th>Pengembalian Kepada</th>
						</tr>
					</thead>
					<tbody>

						<?php
						// Jalankan query
						$sql = mysqli_query($koneksi, "SELECT 
							tb_sirkulasi.id_buku, 
							buku.judul_buku, 
							tb_anggota.id_anggota,
							tb_anggota.nama AS nama_anggota,
							tb_sirkulasi.id_sk,
							tb_sirkulasi.tgl_pinjam,
							tb_sirkulasi.tgl_kembali,
							tb_sirkulasi.tgl_dikembalikan,
							IF(DATEDIFF(NOW(), tb_sirkulasi.tgl_kembali) <= 0, 0, DATEDIFF(NOW(), tb_sirkulasi.tgl_kembali)) AS telat_pengembalian,
							p_pinjam.nama_pegawai AS pegawai_pinjam,
							p_kembali.nama_pegawai AS pegawai_kembali
						FROM tb_sirkulasi 
						JOIN tb_anggota ON tb_anggota.id_anggota = tb_sirkulasi.id_anggota 
						JOIN buku ON buku.no_induk = tb_sirkulasi.id_buku
						LEFT JOIN pegawai AS p_pinjam ON p_pinjam.id = tb_sirkulasi.id_petugas
						LEFT JOIN pegawai AS p_kembali ON p_kembali.id = tb_sirkulasi.id_petugas_kembali
						WHERE tb_sirkulasi.status = 'KEM'
						ORDER BY tb_anggota.id_anggota;");

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
							<td>' . $data['nama_anggota'] . '</td>
							<td>' . date_format(new DateTime($data['tgl_pinjam']), 'd/M/Y') . '</td>
							<td>' . $data['pegawai_pinjam'] . '</td>
							<td>' . date_format(new DateTime($data['tgl_kembali']), 'd/M/Y') . '</td>
							<td>' . date_format(new DateTime($data['tgl_dikembalikan']), 'd/M/Y') . '</td>
							<td>' . $data['pegawai_kembali'] . '</td>

						</tr>';
						}
						?>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>
<div class="modal fade" id="filterModal_data_buku" tabindex="-1" role="dialog" aria-labelledby="filterModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="filterModalLabel">Filter Data Buku Terpopuler</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form method="GET" action="">
				<input type="hidden" name="page" value="admin">
				<div class="modal-body">
					<div class="form-group">
						<label for="bulan">Bulan</label>
						<select name="bulan" class="form-control ">
							<option value="">Pilih Bulan</option>
							<option value="1">Januari</option>
							<option value="2">Februari</option>
							<option value="3">Maret</option>
							<option value="4">April</option>
							<option value="5">Mei</option>
							<option value="6">Juni</option>
							<option value="7">Juli</option>
							<option value="8">Agustus</option>
							<option value="9">September</option>
							<option value="10">Oktober</option>
							<option value="11">November</option>
							<option value="12">Desember</option>
						</select>
					</div>

					<div class="form-group">
						<label for="tahun">Tahun</label>
						<input type="number" name="tahun1" class="form-control" placeholder="Tahun" value="<?php echo $tahunFilter; ?>">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
					<input type="submit" value="Filter" class="btn btn-primary">
				</div>
			</form>
		</div>
	</div>
</div>
<div class="modal fade" id="filterModal_data_anggota" tabindex="-1" role="dialog" aria-labelledby="filterModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="filterModalLabel">Filter Data Angota Teraktif</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form method="GET" action="">
				<input type="hidden" name="page" value="admin">
				<div class="modal-body">
					<div class="form-group">
						<label for="bulan">Bulan</label>
						<select name="bulan" class="form-control ">
							<option value="">Pilih Bulan</option>
							<option value="1">Januari</option>
							<option value="2">Februari</option>
							<option value="3">Maret</option>
							<option value="4">April</option>
							<option value="5">Mei</option>
							<option value="6">Juni</option>
							<option value="7">Juli</option>
							<option value="8">Agustus</option>
							<option value="9">September</option>
							<option value="10">Oktober</option>
							<option value="11">November</option>
							<option value="12">Desember</option>
						</select>
					</div>

					<div class="form-group">
						<label for="tahun">Tahun</label>
						<input type="number" name="tahun1" class="form-control" placeholder="Tahun" value="<?php echo $tahunFilter; ?>">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
					<input type="submit" value="Filter" class="btn btn-primary">
				</div>
			</form>
		</div>
	</div>
</div>
<div class="modal fade" id="filterModal_data_transaksi" tabindex="-1" role="dialog" aria-labelledby="filterModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="filterModalLabel">Filter Data Angota Teraktif</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form method="GET" action="">
				<input type="hidden" name="page" value="admin">
				<div class="modal-body">
					<div class="form-group">
						<label for="bulan">Bulan</label>
						<select name="bulan" class="form-control ">
							<option value="">Pilih Bulan</option>
							<option value="1">Januari</option>
							<option value="2">Februari</option>
							<option value="3">Maret</option>
							<option value="4">April</option>
							<option value="5">Mei</option>
							<option value="6">Juni</option>
							<option value="7">Juli</option>
							<option value="8">Agustus</option>
							<option value="9">September</option>
							<option value="10">Oktober</option>
							<option value="11">November</option>
							<option value="12">Desember</option>
						</select>
					</div>

					<div class="form-group">
						<label for="tahun">Tahun</label>
						<input type="number" name="tahun1" class="form-control" placeholder="Tahun" value="<?php echo $tahunFilter; ?>">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
					<input type="submit" value="Filter" class="btn btn-primary">
				</div>
			</form>
		</div>
	</div>
</div>