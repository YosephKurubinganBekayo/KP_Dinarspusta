<?php
// Koneksi database

// Dapatkan ID dari URL
$id_profile = $_GET['kode'];

// Ambil data dari database berdasarkan ID
$sql = $koneksi->query("SELECT * FROM tbl_aboutus WHERE id_aboutus = '$id_profile'");
$data = $sql->fetch_assoc();
$gambar_lama = $data['pict_aboutus']; // Simpan nama gambar lama untuk digunakan nanti

// Proses update data ketika form disubmit
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
          <input type="text" name="judul" class="form-control" value="<?php echo $data['title_aboutus']; ?>" required>
        </div>
        <div class="form-group">
          <label>Detail</label>
          <textarea id="summernote" type="text" name="detail" class="form-control"><?php echo $data['detail_aboutus']; ?></textarea>
        </div>
        <div class="form-group">
          <label>Gambar</label><br>
          <img src="../img/<?php echo $data['pict_aboutus']; ?>" alt="Gambar Profil" style="width: 100px; height: auto;"><br><br>
          <input type="file" name="gambar" class="form-control">
        </div>

        <button type="submit" name="update" class="btn btn-primary">Simpan Perubahan</button>
        <a href="?page=MyApp/tentang_kami" class="btn btn-default">Batal</a>
      </form>
    </div>
  </div>
</section>
<?php
if (isset($_POST['update'])) {
  $judul = $_POST['judul'];
  $detail = $_POST['detail'];

  // Ambil data lama dari database
  $gambar_lama = isset($data['pict_aboutus']) ? $data['pict_aboutus'] : '';

  // Proses upload gambar baru jika ada
  $gambar_baru = $_FILES['gambar']['name'];
  $gambar = $gambar_lama; // Default gunakan gambar lama

  if ($gambar_baru) {
    $target_dir = "../img/";
    $imageFileType = strtolower(pathinfo($gambar_baru, PATHINFO_EXTENSION));
    $unique_name = uniqid() . '.' . $imageFileType; // Nama unik untuk file baru
    $target_file = $target_dir . $unique_name;

    // Periksa apakah file adalah gambar
    $check = getimagesize($_FILES["gambar"]["tmp_name"]);
    if ($check !== false) {
      if (in_array($imageFileType, ['jpg', 'jpeg', 'png'])) {
        // Hapus gambar lama jika ada
        if (!empty($gambar_lama) && file_exists($target_dir . $gambar_lama)) {
          unlink($target_dir . $gambar_lama);
        }
        // Upload gambar baru
        if (move_uploaded_file($_FILES["gambar"]["tmp_name"], $target_file)) {
          $gambar = $unique_name; // Set nama gambar baru
        } else {
          echo "<script>alert('Gagal mengupload gambar baru.');</script>";
        }
      } else {
        echo "<script>alert('Hanya file JPG, JPEG, dan PNG yang diizinkan.');</script>";
      }
    } else {
      echo "<script>alert('File yang dipilih bukan gambar.');</script>";
    }
  }

  // Query update data
  $query_ubah = $koneksi->query("UPDATE tbl_aboutus SET 
        title_aboutus = '$judul',
        detail_aboutus = '$detail',
        pict_aboutus = '$gambar'
        WHERE id_aboutus = '$id_profile'");

  if ($query_ubah) {
    echo "<script>
        Swal.fire({title: 'Ubah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/tentang_kami';
            }
        });
        </script>";
  } else {
    echo "<script>
        Swal.fire({title: 'Ubah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/tentang_kami';
            }
        });
        </script>";
  }
}
?>