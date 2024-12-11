<?php
// Koneksi database
if (isset($_GET['kode'])) {
    $kode = $_GET['kode']; // Mengambil kode yang ingin diedit

    // Ambil data dari database berdasarkan kode
    $query = $koneksi->query("SELECT * FROM informasi_pelayanan WHERE id = '$kode'");
    $data = $query->fetch_assoc();
}
?>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Edit Informasi Pelayanan</h3>
                </div>
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="box-body">
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
                            <label>Alamat</label>
                            <input type="text" name="alamat" class="form-control" value="<?= $data['alamat']; ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Lantai</label>
                            <input type="text" name="lantai" class="form-control" value="<?= $data['lantai']; ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Jam Operasional</label>
                            <textarea name="jam_operasional" class="form-control"><?= $data['jam_operasional']; ?></textarea>
                        </div>
                        <div class="form-group">
                            <label>Jam Tambahan</label>
                            <input type="text" name="jam_tambahan" class="form-control" value="<?= $data['jam_tambahan']; ?>">
                        </div>
                        <div class="form-group">
                            <label>Tutup</label>
                            <input type="text" name="tutup" class="form-control" value="<?= $data['tutup']; ?>">
                        </div>
                    </div>
                    <div class="box-footer">
                        <input type="submit" name="edit" value="Simpan Perubahan" class="btn btn-info">
                        <a href="?page=MyApp/data_informasi" class="btn btn-warning">Batal</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<?php
// Proses edit data
if (isset($_POST['edit'])) {
    $id_departemen = $_POST['id_departemen'];
    $alamat = $_POST['alamat'];
    $lantai = $_POST['lantai'];
    $jam_operasional = $_POST['jam_operasional'];
    $jam_tambahan = $_POST['jam_tambahan'];
    $tutup = $_POST['tutup'];
    // Query update
    $query_edit = $koneksi->query("UPDATE informasi_pelayanan SET 
        id_departemen = '$id_departemen',
        alamat = '$alamat',
        lantai = '$lantai',
        jam_operasional = '$jam_operasional',
        jam_tambahan = '$jam_tambahan',
        tutup = '$tutup'
        WHERE id = '$kode'");

    if ($query_edit) {
        echo "<script>
        Swal.fire({title: 'Edit Data Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/data_informasi';
            }
        })
        </script>";
    } else {
        echo "<script>
        Swal.fire({title: 'Edit Data Gagal', text: '', icon: 'error', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/edit_informasi&kode=$kode';
            }
        })
        </script>";
    }
}
?>