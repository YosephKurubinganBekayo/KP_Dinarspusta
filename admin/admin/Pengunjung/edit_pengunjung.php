<?php
// Ambil NIK dari parameter URL
if (isset($_GET['nik'])) {
  $nik = $_GET['nik'];

  // Ambil data pengunjung berdasarkan NIK
  $sql_pengunjung = $koneksi->query("SELECT * FROM pengunjung WHERE NIK = '$nik'");
  $data_pengunjung = $sql_pengunjung->fetch_assoc();

  // Cek apakah NIK pengunjung sudah ada di tabel anggota
  $cek_anggota = $koneksi->query("SELECT * FROM tb_anggota WHERE nik = '$nik'");

  // Jika sudah menjadi anggota, perbarui data anggota juga
  if ($cek_anggota->num_rows > 0) {
    if (isset($_POST['Simpan'])) {
      // Update data pengunjung
      $sql_update_pengunjung = "UPDATE pengunjung SET 
                NIK = '" . $_POST['nik'] . "',
                nama = '" . $_POST['nama'] . "',
                jenis_kelamin = '" . $_POST['jekel'] . "',
                alamat = '" . $_POST['alamat'] . "',
                no_hp = '" . $_POST['no_hp'] . "',
                pekerjaan = '" . $_POST['pekerjaan'] . "',
                asal_instansi = '" . $_POST['instansi'] . "' 
                WHERE NIK = '$nik'";

      // Update data anggota
      $sql_update_anggota = "UPDATE tb_anggota SET 
                nik = '" . $_POST['nik'] . "',
                nama = '" . $_POST['nama'] . "',
                jekel = '" . $_POST['jekel'] . "',
                alamat = '" . $_POST['alamat'] . "',
                no_hp = '" . $_POST['no_hp'] . "',
                pekerjaan = '" . $_POST['pekerjaan'] . "',
                instansi = '" . $_POST['instansi'] . "' 
                WHERE nik = '$nik'";

      // Eksekusi query untuk update pengunjung dan anggota
      if ($koneksi->query($sql_update_pengunjung) && $koneksi->query($sql_update_anggota)) {
        echo "<script>
                    Swal.fire({
                        title: 'Data Pengunjung dan Anggota Berhasil Diperbarui',
                        icon: 'success',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.value) {
                            window.location = 'index.php?page=MyApp/data_pengunjung';
                        }
                    });
                </script>";
      } else {
        echo "<script>
                    Swal.fire({
                        title: 'Gagal Memperbarui Data',
                        icon: 'error',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.value) {
                            window.location = 'index.php?page=MyApp/edit_pengunjung&nik=$nik';
                        }
                    });
                </script>";
      }
    }
  } else {
    // Jika bukan anggota, hanya update data pengunjung
    if (isset($_POST['Simpan'])) {
      $sql_update_pengunjung = "UPDATE pengunjung SET
                 NIK = '" . $_POST['nik'] . "',
                nama = '" . $_POST['nama'] . "',
                jenis_kelamin = '" . $_POST['jekel'] . "',
                alamat = '" . $_POST['alamat'] . "',
                no_hp = '" . $_POST['no_hp'] . "',
                pekerjaan = '" . $_POST['pekerjaan'] . "',
                asal_instansi = '" . $_POST['instansi'] . "' 
                WHERE NIK = '$nik'";

      if ($koneksi->query($sql_update_pengunjung)) {
        echo "<script>
                    Swal.fire({
                        title: 'Data Pengunjung Berhasil Diperbarui',
                        icon: 'success',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.value) {
                            window.location = 'index.php?page=MyApp/data_pengunjung';
                        }
                    });
                </script>";
      } else {
        echo "<script>
                    Swal.fire({
                        title: 'Gagal Memperbarui Data Pengunjung',
                        icon: 'error',
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.value) {
                            window.location = 'index.php?page=MyApp/edit_pengunjung&nik=$nik';
                        }
                    });
                </script>";
      }
    }
  }
}
?>

<section class="content-header">
  <h1>
    Edit Pengunjung
  </h1>
  <ol class="breadcrumb">
    <li>
      <a href="index.php">
        <i class="fa fa-home"></i>
        <b>Si Perpustakaan</b>
      </a>
    </li>
    <li class="active">Edit Pengunjung</li>
  </ol>
</section>

<section class="content">
  <div class="box box-info">
    <div class="box-header with-border">
      <h3 class="box-title">Edit Data Pengunjung</h3>
    </div>
    <form action="" method="post" enctype="multipart/form-data">
      <div class="box-body">
        <div class="form-group">
          <label>Nama Pengunjung</label>
          <input type="text" name="nik" class="form-control" value="<?php echo $data_pengunjung['NIK']; ?>">
        </div>
        <div class="form-group">
          <label>Nama Pengunjung</label>
          <input type="text" name="nama" class="form-control" value="<?php echo $data_pengunjung['nama']; ?>">
        </div>

        <div class="form-group">
          <label>Jenis Kelamin</label>
          <select name="jekel" class="form-control" required>
            <option value="Laki-laki" <?php echo ($data_pengunjung['jenis_kelamin'] == 'Laki-laki') ? 'selected' : ''; ?>>Laki-laki</option>
            <option value="Perempuan" <?php echo ($data_pengunjung['jenis_kelamin'] == 'Perempuan') ? 'selected' : ''; ?>>Perempuan</option>
          </select>
        </div>

        <div class="form-group">
          <label>Alamat</label>
          <textarea name="alamat" class="form-control"><?php echo $data_pengunjung['alamat']; ?></textarea>
        </div>

        <div class="form-group">
          <label>No HP</label>
          <input type="number" name="no_hp" class="form-control" value="<?php echo $data_pengunjung['no_hp']; ?>">
        </div>

        <div class="form-group">
          <label>Pekerjaan</label>
          <input type="text" name="pekerjaan" class="form-control" value="<?php echo $data_pengunjung['pekerjaan']; ?>">
        </div>

        <div class="form-group">
          <label>Asal Instansi</label>
          <input type="text" name="instansi" class="form-control" value="<?php echo $data_pengunjung['asal_instansi']; ?>">
        </div>
      </div>

      <div class="box-footer">
        <input type="submit" name="Simpan" value="Simpan" class="btn btn-info">
        <a href="index.php?page=MyApp/data_pengunjung" class="btn btn-warning">Batal</a>
      </div>
    </form>
  </div>
</section>