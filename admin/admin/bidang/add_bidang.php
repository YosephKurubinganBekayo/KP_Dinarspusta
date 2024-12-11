<?php
// Koneksi database
?>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Tambah Bidang</h3>
                </div>
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="box-body">
                        <div class="form-group">
                            <label>Nama Bidang</label>
                            <input type="text" name="nama_bidang" class="form-control" required>
                        </div>
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
                            <label>Gambar</label>
                            <input type="file" name="gambar" class="form-control" required>
                        </div>
                    </div>
                    <div class="box-footer">
                        <input type="submit" name="tambah" value="Tambah Data" class="btn btn-info">
                        <a href="?page=MyApp/data_bidang" class="btn btn-warning">Batal</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<?php
// Proses tambah data
if (isset($_POST['tambah'])) {
    $nama_bidang = $_POST['nama_bidang'];
    $id_departemen = $_POST['id_departemen'];
    $gambar_baru = $_FILES['gambar']['name'];

    if ($gambar_baru) {
        $target_dir = "../img/";
        $imageFileType = strtolower(pathinfo($gambar_baru, PATHINFO_EXTENSION));
        $file_name = time() . '_' . uniqid() . '.' . $imageFileType; // Nama file unik
        $target_file = $target_dir . $file_name;

        // Validasi file
        $check = getimagesize($_FILES["gambar"]["tmp_name"]);
        if ($check !== false && in_array($imageFileType, ['jpg', 'jpeg', 'png'])) {
            if (move_uploaded_file($_FILES["gambar"]["tmp_name"], $target_file)) {
                $gambar = $file_name;

                // Query insert
                $query_tambah = $koneksi->query("INSERT INTO bidang (nama_bidang, id_departemen, gambar) 
                    VALUES ('$nama_bidang', '$id_departemen', '$gambar')");

                if ($query_tambah) {
                    echo "<script>
                    Swal.fire({title: 'Tambah Data Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'})
                    .then((result) => {
                        if (result.value) {
                            window.location = 'index.php?page=MyApp/data_bidang';
                        }
                    })
                    </script>";
                } else {
                    // Hapus file jika query gagal
                    if (file_exists($target_file)) {
                        unlink($target_file);
                    }
                    echo "<script>
                    Swal.fire({title: 'Tambah Data Gagal', text: '', icon: 'error', confirmButtonText: 'OK'})
                    .then((result) => {
                        if (result.value) {
                            window.location = 'index.php?page=MyApp/tambah_bidang';
                        }
                    })
                    </script>";
                }
            } else {
                echo "<script>alert('Gagal mengupload gambar.');</script>";
            }
        } else {
            echo "<script>alert('File yang diunggah bukan gambar atau format tidak sesuai.');</script>";
        }
    } else {
        echo "<script>alert('Harap unggah gambar.');</script>";
    }
}
?>

