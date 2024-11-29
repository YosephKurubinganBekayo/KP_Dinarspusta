<?php
// Proses simpan data ketika form disubmit
if (isset($_POST['simpan'])) {
    $nama_layanan = $_POST['nama_layanan'];
    $id_departemen = $_POST['id_departemen'];
    $deskripsi = $_POST['deskripsi'];
    
    // Proses upload gambar baru
    $gambar_baru = $_FILES['gambar']['name'];
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
            $gambar = ""; // Kosongkan jika gagal upload
        }
    } else {
        $gambar = ""; // Kosongkan jika gagal upload
    }

    // Query simpan data
    $query_simpan = $koneksi->query("INSERT INTO layanan (nama_layanan, id_departemen, deskripsi, gambar) 
    VALUES ('$nama_layanan', '$id_departemen', '$deskripsi', '$gambar')");

    if ($query_simpan) {
        echo "<script>
        Swal.fire({title: 'Tambah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/layanan';
            }
        })</script>";
    } else {
        echo "<script>
        Swal.fire({title: 'Tambah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
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
            <h1>Tambah Data Layanan</h1>
        </div>
        <div class="box-body">
            <form method="POST" action="" enctype="multipart/form-data">
                <div class="form-group">
                    <label>Nama Layanan</label>
                    <input type="text" name="nama_layanan" class="form-control" placeholder="Masukkan Nama Layanan" required>
                </div>
                <div class="form-group">
                    <label>departemen</label>
                    <select name="id_departemen" class="form-control" required>
                        <option value="">-- Pilih departemen --</option>
                        <?php
                        $query_departemen = $koneksi->query("SELECT `id`, `nama_departemen` FROM `departemen` ORDER BY `id` ASC");
                        while ($row_departemen = $query_departemen->fetch_assoc()) { ?>
                            <option value="<?php echo $row_departemen['id']; ?>">
                                <?php echo $row_departemen['nama_departemen']; ?>
                            </option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Deskripsi</label>
                    <textarea id="summernote" name="deskripsi" class="form-control" placeholder="Masukkan Deskripsi Layanan"></textarea>
                </div>
                <div class="form-group">
                    <label>Gambar</label>
                    <input type="file" name="gambar" class="form-control" required>
                </div>

                <button type="submit" name="simpan" class="btn btn-primary">Simpan Data</button>
                <a href="?page=MyApp/layanan" class="btn btn-default">Batal</a>
            </form>
        </div>
    </div>
</section>
