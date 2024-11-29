<?php
// Koneksi database

// Dapatkan ID dari URL
$id_profile = $_GET['kode'];

// Ambil data dari database berdasarkan ID
$sql = $koneksi->query("SELECT l.`id`,l.`id_departemen`,d.`nama_departemen`,l.`nama_layanan`,l.`deskripsi`,l.`gambar`FROM`layanan` l INNER JOIN`departemen` d ON l.`id_departemen` = d.`id` WHERE l.id = '$id_profile'");
$data = $sql->fetch_assoc();
$gambar_lama = $data['gambar']; // Simpan nama gambar lama untuk digunakan nanti

// Proses update data ketika form disubmit
if (isset($_POST['update'])) {
  $nama_layanan = $_POST['nama_layanan'];
  $id_departemen = $_POST['id_departemen'];
  $deskripsi = $_POST['deskripsi'];
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
  $query_ubah = $koneksi->query("UPDATE layanan SET 
        nama_layanan = '$nama_layanan',
        id_departemen = '$id_departemen',
        deskripsi = '$deskripsi',
        gambar = '$gambar'
        WHERE id = '$id_profile'");

  if ($query_ubah) {
    echo "<script>
  Swal.fire({title: 'Ubah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
  }).then((result) => {
      if (result.value) {
          window.location = 'index.php?page=MyApp/layanan';
      }
  })</script>";
  } else {
    echo "<script>
  Swal.fire({title: 'Ubah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
  }).then((result) => {
      if (result.value) {
          window.location = 'index.php?page=MyApp/layanan';
      }
  })</script>";
  }
}
?>

<section class="content">
  <div class="box box-primary">
    <div class="box-header with-border">
      <h1>Edit Data Layanan</h1>
    </div>
    <div class="box-body">
      <form method="POST" action="" enctype="multipart/form-data">
        <div class="form-group">
          <label>Nama Layanan</label>
          <input type="text" name="nama_layanan" class="form-control" value="<?php echo $data['nama_layanan']; ?>" required>
        </div>
        <div class="form-group">
          <label>departemen</label>
          <select name="id_departemen" class="form-control" required>
            <option value="">-- Pilih departemen --</option>
            <?php
            $query_departemen = $koneksi->query("SELECT `id`, `nama_departemen` FROM `departemen` ORDER BY `id` ASC");
            while ($row_departemen = $query_departemen->fetch_assoc()) {
              $selected = ($data['id_departemen'] == $row_departemen['id']) ? 'selected' : '';
            ?>
              <option value="<?php echo $row_departemen['id']; ?>" <?php echo $selected; ?>>
                <?php echo $row_departemen['nama_departemen']; ?>
              </option>
            <?php
            }
            ?>
          </select>
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
        <a href="?page=MyApp/layanan" class="btn btn-default">Batal</a>
      </form>
    </div>
  </div>
</section>