<?php
// Proses simpan data ketika form disubmit
if (isset($_POST['simpan'])) {
    $nama_layanan = $_POST['nama_layanan'];
    $id_departemen = $_POST['id_departemen'];
    $deskripsi = $_POST['deskripsi'];

    // Default nilai gambar
    $gambar = "";

    // Proses upload gambar baru
    $gambar_baru = $_FILES['gambar']['name'];
    if ($gambar_baru) {
        $target_dir = "../img/"; // Folder khusus untuk gambar layanan
        $imageFileType = strtolower(pathinfo($gambar_baru, PATHINFO_EXTENSION));
        $file_name = time() . '_' . uniqid() . '.' . $imageFileType; // Nama file unik
        $target_file = $target_dir . $file_name;

        // Validasi file
        $check = getimagesize($_FILES["gambar"]["tmp_name"]);
        if ($check !== false && in_array($imageFileType, ['jpg', 'jpeg', 'png'])) {
            // Upload gambar
            if (move_uploaded_file($_FILES["gambar"]["tmp_name"], $target_file)) {
                $gambar = $file_name; // Simpan nama gambar baru
            } else {
                echo "<script>alert('Gagal mengupload gambar.');</script>";
            }
        } else {
            echo "<script>alert('File yang diunggah bukan gambar atau format tidak sesuai.');</script>";
        }
    }

    // Query simpan data menggunakan prepared statement untuk keamanan
    $stmt = $koneksi->prepare("INSERT INTO layanan (nama_layanan, id_departemen, deskripsi, gambar) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("siss", $nama_layanan, $id_departemen, $deskripsi, $gambar);

    if ($stmt->execute()) {
        echo "<script>
        Swal.fire({title: 'Tambah Data Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/layanan';
            }
        });
        </script>";
    } else {
        echo "<script>
        Swal.fire({title: 'Tambah Data Gagal', text: '', icon: 'error', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/layanan';
            }
        });
        </script>";
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