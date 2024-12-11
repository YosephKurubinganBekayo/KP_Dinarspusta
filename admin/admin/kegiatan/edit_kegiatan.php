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
  $judul = ($_POST['judul']); // Sanitasi input
  $deskripsi = ($_POST['deskripsi']); // Sanitasi input
  $tanggal = $_POST['tanggal'];
  $penulis = ($_POST['penulis']); // Sanitasi input
  $id_departemen = ($_POST['id_departemen']); // Sanitasi input

  // Proses upload gambar baru jika ada
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
    if ($uploadOk == 1 && move_uploaded_file($_FILES["gambar"]["tmp_name"], $target_file)) {
      $gambar = $gambar_baru; // Gunakan gambar baru

      // Hapus gambar lama jika ada
      if (isset($gambar_lama) && file_exists("../img/" . $gambar_lama)) {
        unlink("../img/" . $gambar_lama);
      }
    } else {
      echo "<script>alert('Gagal mengupload gambar.');</script>";
      $gambar = $gambar_lama; // Tetap menggunakan gambar lama jika gagal upload
    }
  } else {
    $gambar = $gambar_lama; // Tidak ada gambar baru, tetap gunakan gambar lama
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
          Swal.fire({
              title: 'Ubah Data Berhasil',
              text: '',
              icon: 'success',
              confirmButtonText: 'OK'
          }).then((result) => {
              if (result.value) {
                  window.location = 'index.php?page=MyApp/kegiatan';
              }
          });
      </script>";
  } else {
    echo "<script>
          Swal.fire({
              title: 'Ubah Data Gagal',
              text: '',
              icon: 'error',
              confirmButtonText: 'OK'
          }).then((result) => {
              if (result.value) {
                  window.location = 'index.php?page=MyApp/edit_kegiatan';
              }
          });
      </script>";
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
          <label>Nama Departemen</label>
          <select name="id_departemen" class="form-control" required>
            <option value="">-- Pilih Departemen --</option>
            <?php
            $query_departemen = $koneksi->query("SELECT id, nama_departemen FROM departemen");
            while ($row = $query_departemen->fetch_assoc()) {
              $selected = ($data['id_departemen'] == $row['id']) ? 'selected' : '';
              echo '<option value="' . $row['id'] . '" ' . $selected . '>' . $row['nama_departemen'] . '</option>';
            }
            ?>
          </select>
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