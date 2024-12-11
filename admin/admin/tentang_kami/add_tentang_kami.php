<?php
if (isset($_POST['simpan'])) {
    $judul = $_POST['judul'];
    $detail = $_POST['detail'];

    // Proses upload gambar
    $gambar_baru = $_FILES['gambar']['name'];
    $gambar = ""; // Default kosong
    if ($gambar_baru) {
        $target_dir = "../img/";
        $imageFileType = strtolower(pathinfo($gambar_baru, PATHINFO_EXTENSION));
        $unique_name = uniqid() . '.' . $imageFileType; // Buat nama unik untuk file
        $target_file = $target_dir . $unique_name;

        // Validasi tipe file
        $uploadOk = 1;
        $check = getimagesize($_FILES["gambar"]["tmp_name"]);
        if ($check !== false) {
            if (in_array($imageFileType, ['jpg', 'jpeg', 'png'])) {
                // Cek apakah file berhasil diupload
                if (move_uploaded_file($_FILES["gambar"]["tmp_name"], $target_file)) {
                    $gambar = $unique_name; // Set nama gambar untuk disimpan di database
                } else {
                    echo "<script>alert('Gagal mengupload gambar. Pastikan folder memiliki izin tulis.');</script>";
                }
            } else {
                echo "<script>alert('Hanya file JPG, JPEG, dan PNG yang diizinkan.');</script>";
            }
        } else {
            echo "<script>alert('File yang dipilih bukan gambar.');</script>";
        }
    }

    // Query simpan data
    $query_simpan = $koneksi->query("INSERT INTO tbl_aboutus (title_aboutus, detail_aboutus, pict_aboutus) 
    VALUES ('$judul', '$detail', '$gambar')");

    if ($query_simpan) {
        echo "<script>
        Swal.fire({title: 'Tambah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/tentang_kami';
            }
        })</script>";
    } else {
        echo "<script>
        Swal.fire({title: 'Tambah Data Gagal',text: 'Terjadi kesalahan saat menyimpan data.',icon: 'error',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/tentang_kami';
            }
        })</script>";
    }
}
?>
<section class="content">
  <div class="box box-primary">
    <div class="box-header with-border">
      <h1>Tambah Data Tentang Kami</h1>
    </div>
    <div class="box-body">
      <form method="POST" action="" enctype="multipart/form-data">
        <div class="form-group">
          <label>Judul</label>
          <input type="text" name="judul" class="form-control" placeholder="Masukkan Judul" required>
        </div>
        <div class="form-group">
          <label>Detail</label>
          <textarea id="summernote" name="detail" class="form-control" placeholder="Masukkan Detail"></textarea>
        </div>
        <div class="form-group">
          <label>Gambar</label>
          <input type="file" name="gambar" class="form-control" required>
        </div>

        <button type="submit" name="simpan" class="btn btn-primary">Simpan Data</button>
        <a href="?page=MyApp/tentang_kami" class="btn btn-default">Batal</a>
      </form>
    </div>
  </div>
</section>
