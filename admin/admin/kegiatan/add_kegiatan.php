<?php
// Koneksi database

// Proses tambah data ketika form disubmit
if (isset($_POST['tambah'])) {
  $judul = $_POST['judul'];
  $tanggal = $_POST['tanggal'];
  $penulis = $_POST['penulis'];
  $deskripsi = $_POST['deskripsi'];
  
  // Proses upload gambar jika ada
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
      if (move_uploaded_file($_FILES["gambar"]["tmp_name"], $target_file)) {
        $gambar = $gambar_baru; // Set nama gambar baru untuk disimpan di database
      } else {
        echo "<script>alert('Gagal mengupload gambar.');</script>";
        $gambar = null; // Jika gagal upload, biarkan null
      }
    } else {
      $gambar = null; // Jika gagal upload, biarkan null
    }
  } else {
    $gambar = null; // Jika tidak ada gambar, biarkan null
  }

  // Query tambah data
  $query_tambah = $koneksi->query("INSERT INTO kegiatan (judul, tanggal, penulis, deskripsi, gambar) VALUES (
        '$judul',
        '$tanggal',
        '$penulis',
        '$deskripsi',
        '$gambar')");

  if ($query_tambah) {
    echo "<script>
  Swal.fire({title: 'Tambah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
  }).then((result) => {
      if (result.value) {
          window.location = 'index.php?page=MyApp/kegiatan';
      }
  })</script>";
  } else {
    echo "<script>
  Swal.fire({title: 'Tambah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
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
      <h1>Tambah Data Profil</h1>
    </div>
    <div class="box-body">
      <form method="POST" action="" enctype="multipart/form-data">
        <div class="form-group">
          <label>Judul</label>
          <input type="text" name="judul" class="form-control" required>
        </div>
        <div class="form-group">
          <label>Penulis</label>
          <input type="text" name="penulis" class="form-control" required>
        </div>
        <div class="form-group">
          <label>Tanggal</label>
          <input type="date" name="tanggal" class="form-control" required>
        </div>
        <div class="form-group">
          <label>Deskripsi</label>
          <textarea id="summernote" type="text" name="deskripsi" class="form-control"></textarea>
        </div>
        <div class="form-group">
          <label>Gambar</label><br>
          <input type="file" name="gambar" class="form-control">
        </div>

        <button type="submit" name="tambah" class="btn btn-primary">Tambah Data</button>
        <a href="kegiatan.php" class="btn btn-default">Batal</a>
      </form>
    </div>
  </div>
</section>
