<?php
// Proses tambah data
if (isset($_POST['tambah_pengunjung'])) {
    $NIK = $_POST['NIK'];
    $nama = $_POST['nama'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $no_hp = $_POST['no_hp'];
    $alamat = $_POST['alamat'];
    $pekerjaan = $_POST['pekerjaan'];
    $instansi = $_POST['instansi'];

    // Query insert ke database
    $query_tambah_pengunjung = $koneksi->query("INSERT INTO pengunjung (NIK, nama, jenis_kelamin, no_hp, alamat, pekerjaan, asal_instansi) 
        VALUES ('$NIK', '$nama', '$jenis_kelamin', '$no_hp', '$alamat', '$pekerjaan', '$instansi')");

    if ($query_tambah_pengunjung) {
        echo "<script>
    Swal.fire({title: 'Tambah Data Pengunjung Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'})
    .then((result) => {
        if (result.value) {
            window.location = 'index.php?page=MyApp/add_kunjungan';
        }
    })
    </script>";
    } else {
        echo "<script>
    Swal.fire({title: 'Tambah Data Pengunjung Gagal', text: '', icon: 'error', confirmButtonText: 'OK'})
    .then((result) => {
        if (result.value) {
            window.location = 'index.php?page=MyApp/add_kunjungan';
        }
    })
    </script>";
    }
} // Proses tambah data
elseif (isset($_POST['tambah_kunjungan'])) {
    $pengunjung_NIK = $_POST['pengunjung_NIK'];
    $tanggal_baca = $_POST['tanggal_baca'];
    $id_buku_list = $_POST['id_buku']; // Array dari select multiple

    $success = true;

    foreach ($id_buku_list as $id_buku) {
        $query_tambah_kunjungan = $koneksi->query("INSERT INTO pengunjung_buku (pengunjung_NIK, id_buku, tanggal_baca) 
            VALUES ('$pengunjung_NIK', '$id_buku', '$tanggal_baca')");

        if (!$query_tambah_kunjungan) {
            $success = false;
            break;
        }
    }

    if ($success) {
        echo "<script>
        Swal.fire({title: 'Tambah Data Kunjungan Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/data_kunjungan';
            }
        })
        </script>";
    } else {
        echo "<script>
        Swal.fire({title: 'Tambah Data Kunjungan Gagal', text: '', icon: 'error', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/add_kunjungan';
            }
        })
        </script>";
    }
}

?>
<section class="content-header" style="text-align: center;">
    <h1>Tambah Data Kunjungan dan Pengunjung</h1>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <!-- Form Tambah Pengunjung -->
        <div class="box box-success">
            <div class="box-header with-border">
                <h3 class="box-title">Tambah Data Pengunjung</h3>
            </div>
            <form action="" method="post">
                <div class="box-body">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="NIK">NIK</label>
                            <input type="text" name="NIK" id="NIK" class="form-control" maxlength="16" required>
                        </div>
                        <div class="form-group">
                            <label for="nama">Nama</label>
                            <input type="text" name="nama" id="nama" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="jenis_kelamin">Jenis Kelamin</label>
                            <select name="jenis_kelamin" id="jenis_kelamin" class="form-control" required>
                                <option value="">Pilih Jenis Kelamin</option>
                                <option value="Laki-laki">Laki-laki</option>
                                <option value="Perempuan">Perempuan</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="alamat">Alamat</label>
                            <textarea name="alamat" id="alamat" class="form-control" rows="3" required></textarea>
                        </div>

                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="no_hp">No. HP</label>
                            <input type="text" name="no_hp" id="no_hp" class="form-control" maxlength="15" required>
                        </div>

                        <div class="form-group">
                            <label for="pekerjaan">Pekerjaan</label>
                            <input type="text" name="pekerjaan" id="pekerjaan" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="instansi">Instansi</label>
                            <input type="text" name="instansi" id="instansi" class="form-control" required>
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                    <button type="submit" name="tambah_pengunjung" class="btn btn-success">Tambah Pengunjung</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Form Tambah Kunjungan -->
    <div class="row">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Tambah Data Kunjungan</h3>
            </div>
            <form action="" method="post">
                <div class="box-body">
                    <div class="form-group">
                        <label for="pengunjung">Pengunjung</label>
                        <select name="pengunjung_NIK" id="pengunjung" class="form-control" required>
                            <option value="">Pilih Pengunjung</option>
                            <?php
                            $sql_pengunjung = $koneksi->query("SELECT * FROM pengunjung");
                            while ($data_pengunjung = $sql_pengunjung->fetch_assoc()) {
                            ?>
                                <option value="<?php echo $data_pengunjung['NIK']; ?>"><?php echo $data_pengunjung['nama']; ?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="buku">Buku</label>
                        <select name="id_buku[]" id="buku" class="form-control select2" multiple required>
                            <option value="">Pilih Buku</option>
                            <?php
                            $sql_buku = $koneksi->query("SELECT * FROM buku");
                            while ($data_buku = $sql_buku->fetch_assoc()) {
                            ?>
                                <option value="<?php echo $data_buku['no_induk']; ?>"><?php echo $data_buku['judul_buku']; ?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="tanggal_baca">Tanggal Kunjung</label>
                        <input type="date" name="tanggal_baca" id="tanggal_baca" class="form-control" required>
                    </div>
                </div>
                <div class="box-footer">
                    <button type="submit" name="tambah_kunjungan" class="btn btn-primary">Tambah Kunjungan</button>
                    <a href="?page=MyApp/data_kunjungan" class="btn btn-warning">Batal</a>
                </div>
            </form>

        </div>
    </div>
</section>