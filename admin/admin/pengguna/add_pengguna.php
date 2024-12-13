<section class="content">
	<div class="row">
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Tambah Pegawai</h3>
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



								<div class="form-group">
									<label for="nama_pengguna">Nama Pegawai</label>
									<input type="text" name="nama_pengguna" id="nama_pengguna" class="form-control" placeholder="Nama pegawai">
								</div>

								<div class="form-group">
									<label for="username">Username</label>
									<input type="text" name="username" id="username" class="form-control" placeholder="Username">
								</div>

								<div class="form-group">
									<label for="password">Password</label>
									<input type="password" name="password" id="password" class="form-control" placeholder="Password">
								</div>

								<div class="form-group">
									<label for="level">Level</label>
									<select name="level" id="level" class="form-control">
										<option>-- Pilih Level --</option>
										<option>Administrator</option>
										<option>Petugas</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="alamat">Alamat</label>
									<textarea name="alamat" id="alamat" class="form-control" placeholder="Alamat pengguna"></textarea>
								</div>

								<div class="form-group">
									<label for="jenis_kelamin">Jenis Kelamin</label>
									<select name="jenis_kelamin" id="jenis_kelamin" class="form-control">
										<option>-- Pilih Jenis Kelamin --</option>
										<option value="L">Laki-laki</option>
										<option value="P">Perempuan</option>
									</select>
								</div>

								<div class="form-group">
									<label for="no_telp">No Telepon</label>
									<input type="text" name="no_telp" id="no_telp" class="form-control" placeholder="No Telepon">
								</div>

								<div class="form-group">
									<label for="nip">NIP</label>
									<input type="text" name="nip" id="nip" class="form-control" placeholder="NIP">
								</div>
							</div>
						</div>
					</div>
					<!-- /.box-body -->

					<div class="box-footer">
						<input type="submit" name="Simpan" value="Simpan" class="btn btn-info">
						<a href="?page=MyApp/data_pengguna" title="Kembali" class="btn btn-warning">Batal</a>
					</div>
				</form>
			</div>
			<!-- /.box -->
</section>

<?php

if (isset($_POST['Simpan'])) {
	//mulai proses simpan data
	$sql_simpan = "INSERT INTO tb_pengguna (nama_pengguna,username,password,level) VALUES (
        '" . $_POST['nama_pengguna'] . "',
        '" . $_POST['username'] . "',
        '" . md5($_POST['password']) . "',
        '" . $_POST['level'] . "')";
	$query_simpan = mysqli_query($koneksi, $sql_simpan);
	if ($query_simpan) {
		echo "<script>
      Swal.fire({title: 'Tambah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
      }).then((result) => {if (result.value){
        window.location = 'index.php?page=MyApp/data_pengguna';
        }
      })</script>";
	} else {
		echo "<script>
      Swal.fire({title: 'Tambah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
      }).then((result) => {if (result.value){
        window.location = 'index.php?page=MyApp/add_pengguna';
        }
      })</script>";
	}
	//selesai proses simpan data
}
