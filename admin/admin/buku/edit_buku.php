<?php
if (isset($_GET['kode'])) {
	$sql_cek = "SELECT * FROM buku WHERE no_induk='" . $_GET['kode'] . "'";
	$query_cek = mysqli_query($koneksi, $sql_cek);
	$data_cek = mysqli_fetch_array($query_cek, MYSQLI_BOTH);
}
?>

<section class="content-header">
	<h1>
		Master Data
		<small>Data Buku</small>
	</h1>
</section>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Ubah data Buku</h3>
				</div>
				<form action="" method="post" enctype="multipart/form-data">
					<div class="box-body">
						<div class="row">
							<!-- Kolom Kiri -->
							<div class="col-md-6">

								<div class="form-group">
									<label>ID Buku</label>
									<input type='text' class="form-control" name="id_buku" value="<?php echo $data_cek['id_buku']; ?>" readonly />
								</div>
								<div class="form-group">
									<label>Tanggal Terima</label>
									<input type="date" name="tanggal_terima" class="form-control" value="<?php echo $data_cek['tanggal_terima']; ?>" required/>
								</div>
								<div class="form-group">
									<label>No Induk</label>
									<input type="text" id="no_induk" name="no_induk" class="form-control" value="<?php echo $data_cek['no_induk']; ?>" readonly>
								</div>
								<div class="form-group">
									<label>Judul Buku</label>
									<input type='text' class="form-control" name="judul_buku" value="<?php echo $data_cek['judul_buku']; ?>" required/>
								</div>
								<div class="form-group">
									<label>Pengarang</label>
									<input type='text' class="form-control" name="pengarang" value="<?php echo $data_cek['pengarang']; ?>" required/>
								</div>
							</div>
							<!-- /.col-md-6 -->

							<!-- Kolom Kanan -->
							<div class="col-md-6">
								<div class="form-group">
									<label>Penerbit</label>
									<input type='text' class="form-control" name="penerbit" value="<?php echo $data_cek['penerbit']; ?>" required/>
								</div>
								<div class="form-group">
									<label>No Kelas</label>
									<input type='text' class="form-control" name="no_kelas" value="<?php echo $data_cek['no_kelas']; ?>" required/>
								</div>
								<div class="form-group">
									<label>Eksamplar</label>
									<input type='text' class="form-control" name="eksamplar" value="<?php echo $data_cek['eksamplar']; ?>" required/>
								</div>
								<div class="form-group">
									<label>Jenis</label>
									<select name="jenis" id="jenis" class="form-control"required>
										<?php
										// Menyimpan nilai jenis dari database
										$jenis = $data_cek['jenis'];

										// Menentukan opsi yang akan ditampilkan berdasarkan nilai jenis
										if ($jenis == "F") {
											echo '<option value="F">F</option>';
											echo '<option value="NF">NF</option>';
											echo '<option value="R">R</option>';
										} elseif ($jenis == "NF") {
											echo '<option value="NF">NF</option>';
											echo '<option value="F">F</option>';
											echo '<option value="R">R</option>';
										} elseif ($jenis == "R") {
											echo '<option value="R">R</option>';
											echo '<option value="F">F</option>';
											echo '<option value="NF">NF</option>';
										} else {
											// Jika nilai jenis tidak ada atau berbeda, tampilkan semua opsi
											echo '<option value="">Pilih Jenis</option>';
											echo '<option value="F">F</option>';
											echo '<option value="NF">NF</option>';
											echo '<option value="R">R</option>';
										}
										?>
									</select>
								</div>


								<div class="form-group">
									<label>Keterangan</label>
									<input type='text' class="form-control" name="keterangan" value="<?php echo $data_cek['keterangan']; ?>" required/>
								</div>
								<div class="form-group">
									<label>Harga</label>
									<input type='text' class="form-control" name="harga" value="<?php echo $data_cek['harga']; ?>" required/>
								</div>
							</div>
							<!-- /.col-md-6 -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.box-body -->

					<div class="box-footer">
						<input type="submit" name="Ubah" value="Ubah" class="btn btn-success">
						<a href="?page=MyApp/data_buku" class="btn btn-warning">Batal</a>
					</div>
				</form>
			</div>
			<!-- /.box -->
		</div>
	</div>
</section>
<script>
	// Fungsi untuk memperbarui No Induk berdasarkan ID Buku dan Tahun dari Tanggal Terima
	function updateNoInduk() {
		const idBuku = document.querySelector('[name="id_buku"]').value; // Mengambil ID Buku
		const tanggalTerima = document.querySelector('[name="tanggal_terima"]').value; // Mengambil Tanggal Terima
		const tahun = tanggalTerima ? tanggalTerima.split('-')[0].slice(-2) : ''; // Ambil tahun dari Tanggal Terima

		// Format No Induk sebagai "ID/dinarspus/tahun"
		const noInduk = tahun ? `${idBuku}/dinarspus/${tahun}` : '';

		// Update nilai di kolom No Induk
		document.getElementById('no_induk').value = noInduk;
	}

	// Tambahkan event listener untuk memantau perubahan di Tanggal Terima
	document.querySelector('[name="tanggal_terima"]').addEventListener('change', updateNoInduk);
</script>

<?php

if (isset($_POST['Ubah'])) {
	$sql_ubah = "UPDATE buku SET
        tanggal_terima='" . $_POST['tanggal_terima'] . "',
        judul_buku='" . $_POST['judul_buku'] . "',
        pengarang='" . $_POST['pengarang'] . "',
        penerbit='" . $_POST['penerbit'] . "',
        no_kelas='" . $_POST['no_kelas'] . "',
        eksamplar='" . $_POST['eksamplar'] . "',
        jenis='" . $_POST['jenis'] . "',
        keterangan='" . $_POST['keterangan'] . "',
        harga='" . $_POST['harga'] . "'
        WHERE id_buku='" . $_POST['id_buku'] . "'";
	$query_ubah = mysqli_query($koneksi, $sql_ubah);

	if ($query_ubah) {
		echo "<script>
            Swal.fire({title: 'Ubah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
            }).then((result) => {
                if (result.value) {
                    window.location = 'index.php?page=MyApp/data_buku';
                }
            })</script>";
	} else {
		echo "<script>
            Swal.fire({title: 'Ubah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
            }).then((result) => {
                if (result.value) {
                    window.location = 'index.php?page=MyApp/data_buku';
                }
            })</script>";
	}
}
?>