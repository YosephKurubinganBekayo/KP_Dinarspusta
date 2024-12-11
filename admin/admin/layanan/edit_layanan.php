<?php
// Koneksi database

// Dapatkan ID dari URL
$id_profile = $_GET['kode'];

// Ambil data dari database berdasarkan ID
$sql = $koneksi->query("SELECT l.`id`,l.`id_departemen`,d.`nama_departemen`,l.`nama_layanan`,l.`deskripsi`,l.`gambar`FROM`layanan` l INNER JOIN`departemen` d ON l.`id_departemen` = d.`id` WHERE l.id = '$id_profile'");
$data = $sql->fetch_assoc();
$gambar_lama = $data['gambar']; // Simpan nama gambar lama untuk digunakan nanti


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
<?php
// Proses update data ketika form disubmit
if (isset($_POST['update'])) {
    $nama_layanan = $_POST['nama_layanan'];
    $id_departemen = $_POST['id_departemen'];
    $deskripsi = $_POST['deskripsi'];
    $gambar = $gambar_lama; // Default gunakan gambar lama

    // Proses upload gambar baru jika ada
    $gambar_baru = $_FILES['gambar']['name'];
    if ($gambar_baru) {
        $target_dir = "../img/"; // Folder khusus untuk gambar layanan
        $imageFileType = strtolower(pathinfo($gambar_baru, PATHINFO_EXTENSION));
        $file_name = time() . '_' . uniqid() . '.' . $imageFileType; // Nama file unik
        $target_file = $target_dir . $file_name;

        // Validasi file
        $check = getimagesize($_FILES["gambar"]["tmp_name"]);
        if ($check !== false && in_array($imageFileType, ['jpg', 'jpeg', 'png'])) {
            // Hapus gambar lama jika ada
            if (!empty($gambar_lama) && file_exists($target_dir . $gambar_lama)) {
                unlink($target_dir . $gambar_lama);
            }
            // Upload gambar baru
            if (move_uploaded_file($_FILES["gambar"]["tmp_name"], $target_file)) {
                $gambar = $file_name; // Simpan nama gambar baru
            } else {
                echo "<script>alert('Gagal mengupload gambar baru.');</script>";
            }
        } else {
            echo "<script>alert('File yang diunggah bukan gambar atau format tidak sesuai.');</script>";
        }
    }

    // Query update data
    $stmt = $koneksi->prepare("UPDATE layanan SET 
        nama_layanan = ?, 
        id_departemen = ?, 
        deskripsi = ?, 
        gambar = ? 
        WHERE id = ?");
    $stmt->bind_param("sissi", $nama_layanan, $id_departemen, $deskripsi, $gambar, $id_profile);

    if ($stmt->execute()) {
        echo "<script>
        Swal.fire({title: 'Ubah Data Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/layanan';
            }
        });
        </script>";
    } else {
        echo "<script>
        Swal.fire({title: 'Ubah Data Gagal', text: '', icon: 'error', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/layanan';
            }
        });
        </script>";
    }
}
?>
