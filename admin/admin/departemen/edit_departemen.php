<?php
// Koneksi database
if (isset($_GET['kode'])) {
    $kode = htmlspecialchars($_GET['kode']); // Hindari input langsung

    // Ambil data dari database berdasarkan kode
    $stmt = $koneksi->prepare("SELECT * FROM departemen WHERE id = ?");
    $stmt->bind_param("s", $kode);
    $stmt->execute();
    $data = $stmt->get_result()->fetch_assoc();
    $stmt->close();
}
?>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Edit Data Departemen</h3>
                </div>
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="box-body">
                        <div class="form-group">
                            <label>Nama Departemen</label>
                            <input type="text" name="nama_departemen" class="form-control" value="<?= htmlspecialchars($data['nama_departemen']); ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Gambar</label>
                            <input type="file" name="gambar" class="form-control">
                            <?php if ($data['gambar']) { ?>
                                <img src="../img/<?= htmlspecialchars($data['gambar']); ?>" alt="Gambar" width="100" height="100">
                            <?php } ?>
                        </div>
                    </div>
                    <div class="box-footer">
                        <input type="submit" name="edit" value="Simpan Perubahan" class="btn btn-info">
                        <a href="?page=MyApp/data_departemen" class="btn btn-warning">Batal</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<?php
// Proses edit data
if (isset($_POST['edit'])) {
    $nama_departemen = htmlspecialchars($_POST['nama_departemen']);
    $gambar_baru = $_FILES['gambar']['name'];
    $gambar = $data['gambar']; // Default ke gambar lama

    if ($gambar_baru) {
        $target_dir = "../img/";
        $imageFileType = strtolower(pathinfo($gambar_baru, PATHINFO_EXTENSION));
        $file_name = time() . '_' . uniqid() . '.' . $imageFileType; // Nama unik
        $target_file = $target_dir . $file_name;

        // Validasi file
        $allowed_types = ['image/jpeg', 'image/png', 'image/jpg'];
        $mime_type = mime_content_type($_FILES['gambar']['tmp_name']);
        if (in_array($mime_type, $allowed_types) && in_array($imageFileType, ['jpg', 'jpeg', 'png'])) {
            if (move_uploaded_file($_FILES['gambar']['tmp_name'], $target_file)) {
                // Hapus gambar lama jika ada
                if ($data['gambar'] && file_exists($target_dir . $data['gambar'])) {
                    unlink($target_dir . $data['gambar']);
                }
                $gambar = $file_name; // Set nama gambar baru
            } else {
                echo "<script>alert('Gagal mengupload gambar.');</script>";
            }
        } else {
            echo "<script>alert('File tidak valid. Hanya JPG, JPEG, atau PNG.');</script>";
        }
    }

    // Query update dengan prepared statement
    $stmt = $koneksi->prepare("UPDATE departemen SET nama_departemen = ?, gambar = ? WHERE id = ?");
    $stmt->bind_param("sss", $nama_departemen, $gambar, $kode);

    if ($stmt->execute()) {
        echo "<script>
        Swal.fire({title: 'Edit Data Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/data_departemen';
            }
        });
        </script>";
    } else {
        echo "<script>
        Swal.fire({title: 'Edit Data Gagal', text: '', icon: 'error', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/edit_departemen&kode=$kode';
            }
        });
        </script>";
    }
    $stmt->close();
}
?>
