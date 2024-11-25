<?php
// Koneksi database

// Dapatkan ID dari URL
$id_profile = $_GET['kode'];

// Ambil data dari database berdasarkan ID
$sql = $koneksi->query("SELECT * FROM kegiatan WHERE id = '$id_profile'");
$data = $sql->fetch_assoc();
$gambar_lama = $data['gambar']; // Simpan nama gambar lama untuk digunakan nanti

// Proses update data ketika form disubmit
if (isset($_POST['update'])) {
  $judul = $_POST['judul'];
  $deskripsi = $_POST['deskripsi'];
  $tanggal = $_POST['tanggal'];
  $penulis = $_POST['penulis'];
  // Proses upload gambar baru jika ada
  $gambar_baru = $_FILES['gambar']['name'];
  if ($gambar_baru) {
    $target_dir = "../img/";
    $target_file = $target_dir . basename($gambar_baru);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    // Periksa apakah file adalah gambar
    $check = getimagesize($_FILES["gambar"]["tmp_name"]);
    if ($check !== false) {
      $uploadOk = 1;
    } else {
      echo "<script>alert('File yang dipilih bukan gambar.');</script>";
      $uploadOk = 0;
    }

    // Batasi tipe file yang diizinkan
    if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg") {
      echo "<script>alert('Hanya file JPG, JPEG, dan PNG yang diizinkan.');</script>";
      $uploadOk = 0;
    }

    // Cek jika $uploadOk sama dengan 1, maka file dapat diupload
    if ($uploadOk == 1) {
      // Hapus gambar lama jika ada
      if (file_exists($target_dir . $gambar_lama)) {
        unlink($target_dir . $gambar_lama);
      }
      // Upload gambar baru
      if (move_uploaded_file($_FILES["gambar"]["tmp_name"], $target_file)) {
        $gambar = $gambar_baru; // Set nama gambar baru untuk disimpan di database
      } else {
        echo "<script>alert('Gagal mengupload gambar.');</script>";
        $gambar = $gambar_lama; // Gunakan gambar lama jika gagal upload
      }
    } else {
      $gambar = $gambar_lama; // Jika gagal upload, gunakan gambar lama
    }
  } else {
    $gambar = $gambar_lama; // Jika tidak ada gambar baru, gunakan gambar lama
  }

  // Query update data
  $query_ubah = $koneksi->query("UPDATE kegiatan SET 
        judul = '$judul',
        deskripsi = '$deskripsi',
        tanggal = '$tanggal',
        penulis = '$penulis',
        gambar = '$gambar'
        WHERE id = '$id_profile'");

  if ($query_ubah) {
    echo "<script>
  Swal.fire({title: 'Ubah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
  }).then((result) => {
      if (result.value) {
          window.location = 'index.php?page=MyApp/kegiatan';
      }
  })</script>";
  } else {
    echo "<script>
  Swal.fire({title: 'Ubah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
  }).then((result) => {
      if (result.value) {
          window.location = 'index.php?page=MyApp/kegiatan';
      }
  })</script>";
  }
}
?>

<section class="content">
  <div class="box box-primary">
    <div class="box-header with-border">
      <h1>Edit Data Profil</h1>
    </div>
    <div class="box-body">
      <form method="POST" action="" enctype="multipart/form-data">
        <div class="form-group">
          <label>Judul</label>
          <input type="text" name="judul" class="form-control" value="<?php echo $data['judul']; ?>" required>
        </div>
        <div class="form-group">
          <label>Penulis</label>
          <input type="text" name="penulis" class="form-control" value="<?php echo $data['penulis']; ?>" required>
        </div>
        <div class="form-group">
          <label>Tanggal</label>
          <input type="text" name="tanggal" class="form-control" value="<?php echo $data['tanggal']; ?>" required>
        </div>
        <div class="form-group">
          <label>Deskripsi</label>
          <textarea id="summernote" type="text" name="deskripsi" class="form-control"><?php echo $data['deskripsi']; ?></textarea>
        </div>
        <div class="form-group">
          <label>Gambar</label><br>
          <img src="../img/<?php echo $data['gambar']; ?>" alt="Gambar Profil" style="width: 100px; height: auto;"><br><br>
          <input type="file" name="gambar" class="form-control">
        </div>

        <button type="submit" name="update" class="btn btn-primary">Simpan Perubahan</button>
        <a href="kegiatan.php" class="btn btn-default">Batal</a>
      </form>
    </div>
  </div>
</section>