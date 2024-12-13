<?php

if (isset($_GET['kode'])) {
	$sql_cek = "SELECT * FROM tb_pengguna WHERE id_pengguna='" . $_GET['kode'] . "'";
	$query_cek = mysqli_query($koneksi, $sql_cek);
	$data_cek = mysqli_fetch_array($query_cek, MYSQLI_BOTH);
}
?>


<section class="content">
	<div class="row">
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Edit Pegawai</h3>
					<div class="box-tools pull-right">
						<button type="button" class="btn btn-box-tool" data-widget="collapse">
							<i class="fa fa-minus"></i>
						</button>
						<button type="button" class="btn btn-box-tool" data-widget="remove">
							<i class="fa fa-remove"></i>
						</button>
					</div>
				</div>
				<!-- /.box-header -->
				<!-- form start -->
				<form action="" method="post" enctype="multipart/form-data">
					<div class="box-body">
						<div class="row">
							<div class="col-md-6">

								<!-- Hidden ID field to track which user is being edited -->
								<div class="form-group">
									<input type='hidden' class="form-control" name="id_pengguna" value="<?php echo $data_cek['id_pengguna']; ?>" readonly />
								</div>

								<!-- Nama Pengguna -->
								<div class="form-group">
									<label>Nama Pegawai</label>
									<input class="form-control" name="nama_pengguna" value="<?php echo $data_cek['nama_pengguna']; ?>" />
								</div>

								<!-- Username -->
								<div class="form-group">
									<label>Username</label>
									<input class="form-control" name="username" value="<?php echo $data_cek['username']; ?>" />
								</div>

								<!-- Password with visibility toggle -->
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label>
									<input type="password" class="form-control" name="password" id="pass" value="<?php echo $data_cek['password']; ?>" />
									<input id="mybutton" onclick="change()" type="checkbox" class="form-checkbox"> Lihat Password
								</div>
								<div class="form-group">
									<label>Level</label>
									<select name="level" id="level" class="form-control" required>
										<option value="">-- Pilih Level --</option>
										<?php
										if ($data_cek['level'] == "Administrator") echo "<option value='Administrator' selected>Administrator</option>";
										else echo "<option value='Administrator'>Administrator</option>";

										if ($data_cek['level'] == "Petugas") echo "<option value='Petugas' selected>Petugas</option>";
										else echo "<option value='Petugas'>Petugas</option>";
										?>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<!-- Level selection -->


								<!-- Alamat -->
								<div class="form-group">
									<label for="alamat">Alamat</label>
									<textarea name="alamat" id="alamat" class="form-control" placeholder="Alamat pengguna"><?php echo $data_cek['alamat']; ?></textarea>
								</div>

								<!-- Jenis Kelamin -->
								<div class="form-group">
									<label for="jenis_kelamin">Jenis Kelamin</label>
									<select name="jenis_kelamin" id="jenis_kelamin" class="form-control">
										<option value="">-- Pilih Jenis Kelamin --</option>
										<option value="L" <?php echo ($data_cek['jenis_kelamin'] == 'L') ? 'selected' : ''; ?>>Laki-laki</option>
										<option value="P" <?php echo ($data_cek['jenis_kelamin'] == 'P') ? 'selected' : ''; ?>>Perempuan</option>
									</select>
								</div>

								<!-- No Telepon -->
								<div class="form-group">
									<label for="no_telp">No Telepon</label>
									<input type="text" name="no_telp" id="no_telp" class="form-control" placeholder="No Telepon" value="<?php echo $data_cek['no_telp']; ?>" />
								</div>

								<!-- NIP -->
								<div class="form-group">
									<label for="nip">NIP</label>
									<input type="text" name="nip" id="nip" class="form-control" placeholder="NIP" value="<?php echo $data_cek['nip']; ?>" />
								</div>
							</div>
						</div>
						<!-- /.box-body -->

						<div class="box-footer">
							<input type="submit" name="Ubah" value="Ubah" class="btn btn-success">
							<a href="?page=MyApp/data_pengguna" title="Kembali" class="btn btn-warning">Batal</a>
						</div>
				</form>

			</div>
			<!-- /.box -->
		</div>
	</div>
</section>


<?php

if (isset($_POST['Ubah'])) {
	//mulai proses ubah
	$sql_ubah = "UPDATE tb_pengguna SET
        nama_pengguna='" . $_POST['nama_pengguna'] . "',
        username='" . $_POST['username'] . "',
        password='" . md5($_POST['password']) . "',
        level='" . $_POST['level'] . "'
        WHERE id_pengguna='" . $_POST['id_pengguna'] . "'";
	$query_ubah = mysqli_query($koneksi, $sql_ubah);
	if ($query_ubah) {
		echo "<script>
      Swal.fire({title: 'Ubah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
      }).then((result) => {
          if (result.value) {
              window.location = 'index.php?page=MyApp/data_pengguna';
          }
      })</script>";
	} else {
		echo "<script>
      Swal.fire({title: 'Ubah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
      }).then((result) => {
          if (result.value) {
              window.location = 'index.php?page=MyApp/data_pengguna';
          }
      })</script>";
	}

	//selesai proses ubah
}

?>

<script type="text/javascript">
	function change() {
		var x = document.getElementById('pass').type;

		if (x == 'password') {
			document.getElementById('pass').type = 'text';
			document.getElementById('mybutton').innerHTML;
		} else {
			document.getElementById('pass').type = 'password';
			document.getElementById('mybutton').innerHTML;
		}
	}
</script>