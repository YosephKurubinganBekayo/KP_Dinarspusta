<section class="content-header">


</section>
<!-- Main content -->
<section class="content">
	<div class="box box-primary">
		<div class="box-header with-border">
			<center>
				<h1>
					Laporan Kunjungan
				</h1>
			</center>
		</div>
		<?php  // Mendapatkan nilai filter dari input GET
		$bulanFilter = isset($_GET['bulan1']) ? $_GET['bulan1'] : '';
		$tahunFilter = isset($_GET['tahun1']) ? $_GET['tahun1'] : '';
		$jenisFilter = isset($_GET['jenis1']) ? $_GET['jenis1'] : ''; ?>
		<div class="box-body">
			<h3 class="box-header with-border">Laporan Pengunjung Teraktif</h3>
			<div class="text-right mb-3" style="padding: 20px;">
				<button class="btn btn-primary" data-toggle="modal" data-target="#filterModal_data_pengunjung">Filter Data</button>
				<?php if ($bulanFilter || $tahunFilter || $jenisFilter) : ?>
					<a href="index.php?page=admin" class="btn btn-danger">Hapus Filter</a>
				<?php endif; ?>
			</div>
			<p>Cetak Laporan</p>
			<div class="row">
				<div class="col-md-6 ">
					<div class="table-responsive">
						<table id="tabel_laporan1" class="table table-bordered table-striped" data-title="Laporan Pengunjung Teraktif">
							<thead>
								<tr>
									<th>No</th>
									<th>NIK</th>
									<th>Nama Pengunjung</th>
									<th>Jumlah Kunjungan</th>

								</tr>
							</thead>
							<tbody>

								<?php
								// Jalankan query

								$sql = $koneksi->query("
        			SELECT p.nama, pb.pengunjung_NIK, COUNT(*) as total_kunjungan FROM ( SELECT pengunjung_NIK, tanggal_baca FROM pengunjung_buku GROUP BY pengunjung_NIK, tanggal_baca ) as pb JOIN pengunjung p ON pb.pengunjung_NIK = p.NIK GROUP BY pb.pengunjung_NIK, p.nama ORDER BY total_kunjungan DESC LIMIT 10;
    				");

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
							<td>' . $data['pengunjung_NIK'] . '</td>
							<td>' . $data['nama'] . '</td>
							<td>' . $data['total_kunjungan'] . '</td>
													</tr>';
								}
								?>

							</tbody>
						</table>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box box-info h-100">
						<div class="box-header with-border">
							<h3 class="box-title">Grafik Pengunjung Teraktif</h3>
							
						</div>
						<div class="box-body">
							<canvas id="secondChart" width="400" height="200"></canvas>
						</div>
					</div>
				</div>
				<?php
				$sql = $koneksi->query("
                SELECT p.nama, pb.pengunjung_NIK, COUNT(*) as total_kunjungan FROM ( SELECT pengunjung_NIK, tanggal_baca FROM pengunjung_buku GROUP BY pengunjung_NIK, tanggal_baca ) as pb JOIN pengunjung p ON pb.pengunjung_NIK = p.NIK GROUP BY pb.pengunjung_NIK, p.nama ORDER BY total_kunjungan DESC LIMIT 10;
            ");


				$data_pengunjung = [];
				while ($row = $sql->fetch_assoc()) {
					$data_pengunjung[] = $row;
				}
				?>
				<script>
					// Data dari PHP ke JavaScript
					const pengunjungData = <?php echo json_encode($data_pengunjung); ?>;

					// Ekstrak data untuk Chart.js
					const labels = pengunjungData.map(data => data.nama);
					const kunjungan = pengunjungData.map(data => data.total_kunjungan);

					// Inisialisasi Chart.js
					const ctxkunjungan = document.getElementById('secondChart').getContext('2d');
					const secondChart = new Chart(ctxkunjungan, {
						type: 'bar', // Jenis chart: bar, line, dll.
						data: {
							labels: labels, // Nama pengunjung
							datasets: [{
								label: 'Jumlah Kunjungan',
								data: kunjungan, // Total kunjungan tiap pengunjung
								backgroundColor: 'rgba(54, 162, 235, 0.6)',
								borderColor: 'rgba(54, 162, 235, 1)',
								borderWidth: 1
							}]
						},
						options: {
							responsive: true,
							plugins: {
								legend: {
									display: false
								}
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

	</div>
	<div class="box box-primary">

		<?php  // Mendapatkan nilai filter dari input GET
		$bulanFilter = isset($_GET['bulan1']) ? $_GET['bulan1'] : '';
		$tahunFilter = isset($_GET['tahun1']) ? $_GET['tahun1'] : '';
		$jenisFilter = isset($_GET['jenis1']) ? $_GET['jenis1'] : ''; ?>
		<div class="box-body">
			<h3 class="box-header with-border">Laporan Semua data Kunjungan</h3>
			<div class="text-right mb-3" style="padding: 20px;">
				<button class="btn btn-primary" data-toggle="modal" data-target="#filterModal_data_kunjungan">Filter Data</button>
				<?php if ($bulanFilter || $tahunFilter || $jenisFilter) : ?>
					<a href="index.php?page=admin" class="btn btn-danger">Hapus Filter</a>
				<?php endif; ?>
			</div>
			<p>Cetak Laporan</p>
			<div class="table-responsive">
				<table id="tabel_laporan2" class="table table-bordered table-striped" data-title="Laporan Semua Data Kunjungan">
					<thead>
						<tr>
							<th>No</th>
							<th>Id Pengunjung</th>
							<th>Nama Pengunjung</th>
							<th>Judul Buku Yang Dibaca</th>
							<th>Tanggal Kunjung</th>
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
<div class="modal fade" id="filterModal_data_pengunjung" tabindex="-1" role="dialog" aria-labelledby="filterModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="filterModalLabel">Filter Data Pengunjung Teraktif</h5>
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
<div class="modal fade" id="filterModal_data_kunjungan" tabindex="-1" role="dialog" aria-labelledby="filterModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="filterModalLabel">Filter Data Kunjungan</h5>
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