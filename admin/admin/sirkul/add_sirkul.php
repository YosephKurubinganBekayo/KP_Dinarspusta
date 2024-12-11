<?php
//kode 9 digit

// $carikode = mysqli_query($koneksi, "SELECT id_sk FROM tb_sirkulasi order by id_sk desc");
// $datakode = mysqli_fetch_array($carikode);
// $kode = $datakode['id_sk'];
// $urut = substr($kode, 1, 3);
// $tambah = (int) $urut + 1;

// if (strlen($tambah) == 1) {
// 	$format = "S" . "00" . $tambah;
// } else if (strlen($tambah) == 2) {
// 	$format = "S" . "0" . $tambah;
// } else if (strlen($tambah) == 3) {
// 	$format = "S" . $tambah;
// }
?>

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

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Tambah Peminjaman</h3>
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
						<div class="form-group">
							<label>Id Sirkulasi</label>
							<!-- <input type="text" name="id_sk" id="id_sk" class="form-control" value="<?php echo $format; ?>" readonly /> -->
						</div>
						<div class="form-group">
							<label>Nama Peminjam</label>
							<select name="id_anggota" class="form-control select2" required>
								<option value="">-- Pilih Anggota--</option>
								<?php
								// Hanya tampilkan departemen yang belum memiliki informasi pelayanan
								$query_departemen = $koneksi->query("SELECT * from tb_anggota");
								while ($row = $query_departemen->fetch_assoc()) {
									echo '<option value="' . $row['id_anggota'] . '">' . $row['nama'] . '</option>';
								}
								?>
							</select>
						</div>
						<div class="form-group">
							<label>Buku</label>
							<select name="id_buku[]" class="form-control select2" multiple required>
								<option value="">-- Pilih Buku--</option>
								<?php
								// Hanya tampilkan departemen yang belum memiliki informasi pelayanan
								$query_departemen = $koneksi->query("SELECT * from buku WHERE eksamplar >= 1");
								while ($row = $query_departemen->fetch_assoc()) {
									echo '<option value="' . $row['no_induk'] . '">' . $row['judul_buku'] . '</option>';
								}
								?>
							</select>
						</div>
						<div class="form-group">
							<label>Tgl Pinjam</label>
							<input type="date" name="tgl_pinjam" id="tgl_pinjam" class="form-control" />
						</div>

					</div>
					<!-- /.box-body -->

					<div class="box-footer">
						<input type="submit" name="Simpan" value="Simpan" class="btn btn-info">
						<a href="?page=data_sirkul" class="btn btn-warning">Batal</a>
					</div>
				</form>
			</div>
			<!-- /.box -->
</section>

<?php
if (isset($_POST['Simpan'])) {
    // Menangkap data dari form
    // $id_sk = $_POST['id_sk'];
    $id_anggota = $_POST['id_anggota'];
    $tgl_pinjam = $_POST['tgl_pinjam'];
    $id_buku_array = $_POST['id_buku']; // Array buku yang dipilih

    // Membuat tanggal kembali
    $tgl_kembali = date('Y-m-d', strtotime('+7 days', strtotime($tgl_pinjam)));
    $tgl_dikembalikan = date('Y-m-d');
    $status = 'PIN'; // Status peminjaman

    // Memulai transaksi
    $koneksi->begin_transaction();

    try {
        foreach ($id_buku_array as $id_buku) {
            // Masukkan data ke tabel `tb_sirkulasi`
            $sql_sirkulasi = "INSERT INTO tb_sirkulasi 
                              ( id_buku, id_anggota, tgl_pinjam, status, tgl_kembali, tgl_dikembalikan, id_petugas) 
                              VALUES 
                              ('$id_buku', '$id_anggota', '$tgl_pinjam', '$status', '$tgl_kembali', '$tgl_dikembalikan', '$data_id')";
            $koneksi->query($sql_sirkulasi);

            // Masukkan data ke tabel `log_pinjam`
            $sql_log = "INSERT INTO log_pinjam (id_buku, id_anggota, tgl_pinjam, id_petugas) 
                        VALUES ('$id_buku', '$id_anggota', '$tgl_pinjam', '$data_id')";
            $koneksi->query($sql_log);

            // Kurangi stok buku
            $sql_update_stok = "UPDATE buku SET eksamplar = eksamplar - 1 WHERE no_induk = '$id_buku'";
            $koneksi->query($sql_update_stok);
        }

        // Commit transaksi
        $koneksi->commit();

        echo "<script>
        Swal.fire({title: 'Tambah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=data_sirkul';
            }
        })</script>";
    } catch (Exception $e) {
        // Rollback transaksi jika ada kesalahan
        $koneksi->rollback();

        echo "<script>
        Swal.fire({title: 'Tambah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=add_sirkul';
            }
        })</script>";
    }

    // Tutup koneksi
    mysqli_close($koneksi);
}
?>

