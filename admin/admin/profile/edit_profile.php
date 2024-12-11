<?php
// Koneksi database

// Dapatkan ID dari URL
$id_profile = $_GET['kode'];

// Ambil data dari database berdasarkan ID
$sql = $koneksi->query("SELECT * FROM tbl_profile WHERE id_profile = '$id_profile'");
$data = $sql->fetch_assoc();
$gambar_lama = $data['gambar']; // Simpan nama gambar lama untuk digunakan nanti
$logo_lama = $data['logo']; // Simpan nama gambar lama untuk digunakan nanti

// Proses update data ketika form disubmit
if (isset($_POST['update'])) {
  $titlewebsite = $_POST['titlewebsite'];
  $titleparagraf = $_POST['titleparagraf'];
  $welcomeparagraf = $_POST['welcomeparagraf'];
  $copyright = $_POST['copyright'];
  $description = $_POST['description'];
  $keywords = $_POST['keywords'];
  $alamat = $_POST['alamat'];
  $gmap = $_POST['gmap'];
  $email = $_POST['email'];
  $telepon = $_POST['telepon'];
  $facebook = $_POST['facebook'];
  $instagram = $_POST['instagram'];
  $x = $_POST['x'];
  $youtube = $_POST['youtube'];

  // Proses upload gambar baru jika ada
  $gambar_baru = $_FILES['gambar']['name'];
  if ($gambar_baru) {
    $target_dir = "../img/profil/";
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
      }
    } else {
      $gambar = $gambar_lama; // Jika gagal upload, gunakan gambar lama
    }
  } else {
    $gambar = $gambar_lama; // Jika tidak ada gambar baru, gunakan gambar lama
  }

  // logo
  $logo_baru = $_FILES['logo']['name'];
  if ($logo_baru) {
    $target_dir = "../img/profil/";
    $target_file = $target_dir . basename($logo_baru);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    // Periksa apakah file adalah logo (cek ukuran untuk file non-SVG)
    if ($imageFileType === "svg") {
      $uploadOk = 1; // SVG tidak perlu pengecekan ukuran
    } else {
      $check = getimagesize($_FILES["logo"]["tmp_name"]);
      if ($check !== false) {
        $uploadOk = 1;
      } else {
        echo "<script>alert('File yang dipilih bukan gambar.');</script>";
        $uploadOk = 0;
      }
    }

    // Batasi tipe file yang diizinkan
    if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "svg") {
      echo "<script>alert('Hanya file JPG, JPEG, PNG, dan SVG yang diizinkan.');</script>";
      $uploadOk = 0;
    }

    // Cek jika $uploadOk sama dengan 1, maka file dapat diupload
    if ($uploadOk == 1) {
      // Hapus logo lama jika ada
      if (file_exists($target_dir . $logo_lama)) {
        unlink($target_dir . $logo_lama);
      }
      // Upload logo baru
      if (move_uploaded_file($_FILES["logo"]["tmp_name"], $target_file)) {
        // Tambahkan validasi konten SVG untuk keamanan
        if ($imageFileType === "svg") {
          $svgContent = file_get_contents($target_file);
          if (stripos($svgContent, '<script') !== false) {
            unlink($target_file); // Hapus file SVG yang mencurigakan
            echo "<script>alert('File SVG tidak valid.');</script>";
            $logo = $logo_lama; // Gunakan logo lama jika SVG tidak aman
          } else {
            $logo = $logo_baru; // Set nama logo baru untuk disimpan di database
          }
        } else {
          $logo = $logo_baru; // Set nama logo baru untuk disimpan di database
        }
      } else {
        echo "<script>alert('Gagal mengupload logo.');</script>";
      }
    } else {
      $logo = $logo_lama; // Jika gagal upload, gunakan logo lama
    }
  } else {
    $logo = $logo_lama; // Jika tidak ada logo baru, gunakan logo lama
  }



  // Query update data
  $query_ubah = $koneksi->query("UPDATE tbl_profile SET 
        titlewebsite = '$titlewebsite',
        titleparagraf = '$titleparagraf',
        welcomeparagraf = '$welcomeparagraf',
        copyright = '$copyright',
        description = '$description',
        keywords = '$keywords',
        alamat = '$alamat',
        gmap = '$gmap',
        email = '$email',
        telepon = '$telepon',
        facebook = '$facebook',
        instagram = '$instagram',
        x = '$x',
        youtube = '$youtube',
        gambar = '$gambar',
        logo = '$logo'
        WHERE id_profile = '$id_profile'");

  if ($query_ubah) {
    echo "<script>
  Swal.fire({title: 'Ubah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
  }).then((result) => {
      if (result.value) {
          window.location = 'index.php?page=MyApp/profile_dinas';
      }
  })</script>";
  } else {
    echo "<script>
  Swal.fire({title: 'Ubah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
  }).then((result) => {
      if (result.value) {
          window.location = 'index.php?page=MyApp/profile_dinas';
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
          <label>Nama Website</label>
          <input type="text" name="titlewebsite" class="form-control" value="<?php echo $data['titlewebsite']; ?>" required>
        </div>
        <div class="form-group">
          <label>Nama Dinas</label>
          <input type="text" name="titleparagraf" class="form-control" value="<?php echo $data['titleparagraf']; ?>" required>
        </div>
        <div class="form-group">
          <label>Logo</label><br>
          <img src="../img/profil/<?php echo $data['logo']; ?>" alt="logo Profil" style="width: 100px; height: auto;"><br><br>
          <input type="file" name="logo" class="form-control">
        </div>
        <div class="form-group">
          <label>Paragraf Welcome</label>
          <textarea name="welcomeparagraf" class="form-control" required><?php echo $data['welcomeparagraf']; ?></textarea>
        </div>
        <div class="form-group">
          <label>Copyright</label>
          <input type="text" name="copyright" class="form-control" value="<?php echo $data['copyright']; ?>">
        </div>
        <div class="form-group">
          <label>Deskripsi</label>
          <textarea name="description" class="form-control"><?php echo $data['description']; ?></textarea>
        </div>
        <div class="form-group">
          <label>Kata Kunci</label>
          <input type="text" name="keywords" class="form-control" value="<?php echo $data['keywords']; ?>">
        </div>
        <div class="form-group">
          <label>Alamat</label>
          <input type="text" name="alamat" class="form-control" value="<?php echo $data['alamat']; ?>">
        </div>
        <div class="form-group">
          <label>Google Maps</label>
          <textarea name="gmap" class="form-control"><?php echo $data['gmap']; ?></textarea>
        </div>
        <div class="form-group">
          <label>Email</label>
          <input type="email" name="email" class="form-control" value="<?php echo $data['email']; ?>">
        </div>
        <div class="form-group">
          <label>Telepon</label>
          <input type="text" name="telepon" class="form-control" value="<?php echo $data['telepon']; ?>">
        </div>
        <div class="form-group">
          <label>Facebook</label>
          <input type="text" name="facebook" class="form-control" value="<?php echo $data['facebook']; ?>">
        </div>
        <div class="form-group">
          <label>Instagram</label>
          <input type="text" name="instagram" class="form-control" value="<?php echo $data['instagram']; ?>">
        </div>
        <div class="form-group">
          <label>X</label>
          <input type="text" name="x" class="form-control" value="<?php echo $data['x']; ?>">
        </div>
        <div class="form-group">
          <label>YouTube</label>
          <input type="text" name="youtube" class="form-control" value="<?php echo $data['youtube']; ?>">
        </div>
        <div class="form-group">
          <label>Gambar</label><br>
          <img src="../img/profil/<?php echo $data['gambar']; ?>" alt="Gambar Profil" style="width: 100px; height: auto;"><br><br>
          <input type="file" name="gambar" class="form-control">
        </div>

        <button type="submit" name="update" class="btn btn-primary">Simpan Perubahan</button>
        <a href="profile.php" class="btn btn-default">Batal</a>
      </form>
    </div>
  </div>
</section>