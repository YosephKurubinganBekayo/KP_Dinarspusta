<?php

$carikode = mysqli_query($koneksi, "SELECT id_pegawai FROM tb_pegawai order by id_pegawai desc");
$datakode = mysqli_fetch_array($carikode);
$kode = $datakode['id_pegawai'];
$urut = substr($kode, 1, 3);
$tambah = (int) $urut + 1;

if (strlen($tambah) == 1) {
    $format = "P" . "00" . $tambah;
} else if (strlen($tambah) == 2) {
    $format = "P" . "0" . $tambah;
} else if (strlen($tambah) == 3) {
    $format = "P" . $tambah;
}
?>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Tambah Pegawai <small>Data Pegawai</small>
                    </h3>
                </div>
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="box-body">
                        <div class="row">
                            <!-- Kolom Kiri -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>ID Pegawai</label>
                                    <input type="text" name="id_pegawai" id="id_pegawai" class="form-control" value="<?php echo $format; ?>"
                                        readonly />
                                </div>

                                <div class="form-group">
                                    <label>Nama </label>
                                    <input type="text" name="nama" id="nama" class="form-control" placeholder="Nama Pegawai">
                                </div>

                                <div class="form-group">
                                    <label>Jenis Kelamin</label>
                                    <select name="jenis_kelamin" id="jenis_kelamin" class="form-control" required>
                                        <option value="">-- Pilih --</option>
                                        <option value="L">Laki-laki</option>
                                        <option value="P">Perempuan</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="tanggal_lahir">Tanggal Lahir</label>
                                    <input type="date" name="tanggal_lahir" id="tanggal_lahir" class="form-control" placeholder="YYYY-MM-DD" pattern="\d{4}-\d{2}-\d{2}" required>
                                </div>
                                <div class="form-group">
                                    <label>Alamat</label>
                                    <input type="text" name="alamat" id="alamat" class="form-control" placeholder="Alamat">
                                </div>
                            </div>
                            <!-- /.col-md-6 -->

                            <!-- Kolom Kanan -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>No Telepon</label>
                                    <input type="text" name="no_telepon" id="no_telepon" class="form-control" placeholder="No Telepon">
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" name="email" id="email" class="form-control" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <label>Posisi</label>
                                    <input type="text" name="posisi" id="posisi" class="form-control" placeholder="Posisi">
                                </div>
                                <div class="form-group">
                                    <label>Bidang</label>
                                    <input type="text" name="departemen" id="departemen" class="form-control" placeholder="bidang">
                                </div>
                                <div class="form-group">
                                    <label for="tanggal_masuk">Tanggal Masuk</label>

                                    <input type="date" name="tanggal_masuk" id="tanggal_masuk" class="form-control" placeholder="YYYY-MM-DD" pattern="\d{4}-\d{2}-\d{2}" required>
                                </div>
                            </div>
                            <!-- /.col-md-6 -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <input type="submit" name="Simpan" value="Simpan" class="btn btn-info">
                        <a href="?page=MyApp/data_pegawai" class="btn btn-warning">Batal</a>
                    </div>
                </form>
            </div>
            <!-- /.box -->
        </div>
    </div>
</section>
<?php

if (isset($_POST['Simpan'])) {
    $sql_simpan = "INSERT INTO tb_pegawai (id_pegawai, nama, jenis_kelamin, tanggal_lahir, alamat, no_telepon, email, posisi, departemen, tanggal_masuk) VALUES (
           '" . $_POST['id_pegawai'] . "',
          '" . $_POST['nama'] . "',
          '" . $_POST['jenis_kelamin'] . "',
          '" . $_POST['tanggal_lahir'] . "',
          '" . $_POST['alamat'] . "',
          '" . $_POST['no_telepon'] . "',
          '" . $_POST['email'] . "',
          '" . $_POST['posisi'] . "',
          '" . $_POST['departemen'] . "',
          '" . $_POST['tanggal_masuk'] . "')";
    $query_simpan = mysqli_query($koneksi, $sql_simpan);
    mysqli_close($koneksi);

    if ($query_simpan) {

        echo "<script>
      Swal.fire({title: 'Tambah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
      }).then((result) => {
          if (result.value) {
              window.location = 'index.php?page=MyApp/data_pegawai';
          }
      })</script>";
    } else {
        echo "<script>
      Swal.fire({title: 'Tambah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
      }).then((result) => {
          if (result.value) {
              window.location = 'index.php?page=MyApp/add_add pegawai';
          }
      })</script>";
    }
}
