<?php
if (isset($_POST['tambah'])) {
  $judul = $_POST['judul'];
  $tanggal = $_POST['tanggal'];
  $penulis = $_POST['penulis'];
  $deskripsi = $_POST['deskripsi'];
  $id_departemen = $_POST['id_departemen'];

  $gambar = null; // Default gambar jika tidak diupload

  // Proses upload gambar jika ada
  if (!empty($_FILES['gambar']['name'])) {
    $target_dir = "../img/";
    $gambar_baru = time() . "_" . basename($_FILES['gambar']['name']);
    $target_file = $target_dir . $gambar_baru;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
    $uploadOk = 1;

    // Validasi apakah file adalah gambar
    $check = getimagesize($_FILES["gambar"]["tmp_name"]);
    if ($check === false) {
      echo "<script>alert('File yang dipilih bukan gambar.');</script>";
      $uploadOk = 0;
    }

    // Batasi ukuran file
    if ($_FILES["gambar"]["size"] > 2000000) {
      echo "<script>alert('Ukuran gambar terlalu besar. Maksimal 2MB.');</script>";
      $uploadOk = 0;
    }

    // Batasi tipe file
    if (!in_array($imageFileType, ['jpg', 'jpeg', 'png'])) {
      echo "<script>alert('Hanya file JPG, JPEG, dan PNG yang diizinkan.');</script>";
      $uploadOk = 0;
    }

    // Upload file jika valid
    if ($uploadOk && move_uploaded_file($_FILES["gambar"]["tmp_name"], $target_file)) {
      $gambar = $gambar_baru; // Nama file yang disimpan di database
    } else {
      echo "<script>alert('Gagal mengupload gambar.');</script>";
    }
  }

  // Query untuk menambahkan data
  $query_tambah = $koneksi->query("INSERT INTO kegiatan (judul, tanggal, penulis, deskripsi,id_departemen, gambar) VALUES (
        '$judul',
        '$tanggal',
        '$penulis',
        '$deskripsi',
        '$id_departemen',
        '$gambar')");

  // Cek hasil query
  if ($query_tambah) {
    echo "<script>
        Swal.fire({
            title: 'Tambah Data Berhasil',
            text: 'Data berhasil disimpan.',
            icon: 'success',
            confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location = 'index.php?page=MyApp/kegiatan';
            }
        });
        </script>";
  } else {
    // Hapus file jika query gagal
    if ($gambar && file_exists($target_file)) {
      unlink($target_file);
    }
    echo "<script>
        Swal.fire({
            title: 'Tambah Data Gagal',
            text: 'Kesalahan: " . $koneksi->error . "',
            icon: 'error',
            confirmButtonText: 'OK'
        });
        </script>";
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
          <label>Nama Departemen</label>
          <select name="id_departemen" class="form-control" required>
            <option value="">-- Pilih Departemen --</option>
            <?php
            $query_departemen = $koneksi->query("SELECT id, nama_departemen FROM departemen");
            while ($row = $query_departemen->fetch_assoc()) {
              echo '<option value="' . $row['id'] . '">' . $row['nama_departemen'] . '</option>';
            }
            ?>
          </select>
        </div>
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