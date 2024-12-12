<?php
if (isset($_GET['kode'])) {
	$sql_cek = "SELECT * FROM tb_anggota WHERE id_anggota='" . $_GET['kode'] . "'";
	$query_cek = mysqli_query($koneksi, $sql_cek);
	$data_cek = mysqli_fetch_array($query_cek, MYSQLI_BOTH);
}
?>

<section class="content-header">
	<h1>
		Master Data
		<small>Data Anggota</small>
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

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-success">
				<div class="box-header with-border">
					<h3 class="box-title">Ubah Anggota</h3>
				</div>
				<form action="" method="post" enctype="multipart/form-data">
					<div class="box-body">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Id Anggota</label>
									<input type='text' class="form-control" name="id_anggota" value="<?php echo $data_cek['id_anggota']; ?>" readonly />
								</div>

								<div class="form-group">
									<label>NIK</label>
									<input type='text' class="form-control" name="nik" value="<?php echo $data_cek['nik']; ?>" />
								</div>

								<div class="form-group">
									<label>Nama</label>
									<input type='text' class="form-control" name="nama" value="<?php echo $data_cek['nama']; ?>" />
								</div>

								<div class="form-group">
									<label>Jenis Kelamin</label>
									<select name="jekel" id="jekel" class="form-control" required>
										<option value="">-- Pilih --</option>
										<?php
										if ($data_cek['jekel'] == "Laki-laki") echo "<option value='Laki-laki' selected>Laki-laki</option>";
										else echo "<option value='Laki-laki'>Laki-laki</option>";

										if ($data_cek['jekel'] == "Perempuan") echo "<option value='Perempuan' selected>Perempuan</option>";
										else echo "<option value='Perempuan'>Perempuan</option>";
										?>
									</select>
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label>Alamat</label>
									<input type='text' class="form-control" name="alamat" value="<?php echo $data_cek['alamat']; ?>" />
								</div>

								<div class="form-group">
									<label>No HP</label>
									<input type='text' class="form-control" name="no_hp" value="<?php echo $data_cek['no_hp']; ?>" />
								</div>

								<div class="form-group">
									<label>Pekerjaan</label>
									<input type='text' class="form-control" name="pekerjaan" value="<?php echo $data_cek['pekerjaan']; ?>" />
								</div>

								<div class="form-group">
									<label>Instansi</label>
									<input type='text' class="form-control" name="instansi" value="<?php echo $data_cek['instansi']; ?>" />
								</div>
							</div>
						</div>
					</div>

					<div class="box-footer">
						<input type="submit" name="Ubah" value="Ubah" class="btn btn-success">
						<a href="?page=MyApp/data_agt" class="btn btn-warning">Batal</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<?php
if (isset($_POST['Ubah'])) {
	$sql_ubah = "UPDATE tb_anggota SET
        nik='" . $_POST['nik'] . "',
        nama='" . $_POST['nama'] . "',
        jekel='" . $_POST['jekel'] . "',
        alamat='" . $_POST['alamat'] . "',
        no_hp='" . $_POST['no_hp'] . "',
        pekerjaan='" . $_POST['pekerjaan'] . "',
        instansi='" . $_POST['instansi'] . "'
        WHERE id_anggota='" . $_POST['id_anggota'] . "'";
	$query_ubah = mysqli_query($koneksi, $sql_ubah);

	if ($query_ubah) {
		// Update related data in tb_pengunjung
		$sql_update_pengunjung = "UPDATE tb_pengunjung SET
		nama = '" . $_POST['nama'] . "',
		jenis_kelamin = '" . $_POST['jekel'] . "',
		alamat = '" . $_POST['alamat'] . "',
		no_hp = '" . $_POST['no_hp'] . "',
		pekerjaan = '" . $_POST['pekerjaan'] . "',
		asal_instansi = '" . $_POST['instansi'] . "',
		WHERE NIK ='" . $_POST['nik'] . "'";
		mysqli_query($koneksi, $sql_update_pengunjung);

		echo "<script>
        Swal.fire({title: 'Ubah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/data_agt';
            }
        })</script>";
	} else {
		echo "<script>
        Swal.fire({title: 'Ubah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/data_agt';
            }
        })</script>";
	}
}
?>