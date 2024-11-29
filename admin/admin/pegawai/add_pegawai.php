<?php
// Koneksi database

// Proses tambah data ketika form disubmit
if (isset($_POST['tambah'])) {
    $id_pegawai = $_POST['id_pegawai'];
    $nama = $_POST['nama'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $alamat = $_POST['alamat'];
    $no_telepon = $_POST['no_telepon'];
    $email = $_POST['email'];
    $posisi = $_POST['posisi'];
    $bidang = $_POST['bidang'];
    $tanggal_masuk = $_POST['tanggal_masuk']; // Perbaiki ini

    // Proses upload gambar jika ada
    $gambar_baru = $_FILES['gambar']['name'];
    if ($gambar_baru) {
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
                $gambar = null; // Jika gagal upload, biarkan null
            }
        } else {
            $gambar = null; // Jika gagal upload, biarkan null
        }
    } else {
        $gambar = null; // Jika tidak ada gambar, biarkan null
    }

    // Query tambah data
    $query_tambah = $koneksi->query("INSERT INTO tb_pegawai (`NIP`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `no_telepon`, `email`, `posisi`, `id_bidang`, `tanggal_masuk`, `gambar_sk`) VALUES (
        '$id_pegawai',
        '$nama',
        '$jenis_kelamin',
        '$tanggal_lahir',
        '$alamat',
        '$no_telepon',
        '$email',
        '$posisi',
        '$bidang',
        '$tanggal_masuk',
        '$gambar')");

    if ($query_tambah) {
        echo "<script>
        Swal.fire({title: 'Tambah Data Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/data_pegawai';
            }
        })</script>";
    } else {
        echo "<script>
        Swal.fire({title: 'Tambah Data Gagal', text: '', icon: 'error', confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/add_pegawai';
            }
        })</script>";
    }
}
?>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Tambah Pegawai <small>Data Pegawai</small>
                    </h3>
                </div>
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="box-body">
                        <div class="row">
                            <!-- Kolom Kiri -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>NIP</label>
                                    <input type="number" name="id_pegawai" id="id_pegawai" class="form-control" placeholder="NIP">
                                </div>
                                <div class="form-group">
                                    <label>Nama </label>
                                    <input type="text" name="nama" id="nama" class="form-control" placeholder="Nama Pegawai">
                                </div>

                                <div class="form-group">
                                    <label>Jenis Kelamin</label>
                                    <select name="jenis_kelamin" id="jenis_kelamin" class="form-control" required>
                                        <option value="">-- Pilih --</option>
                                        <option value="L">Laki-laki</option>
                                        <option value="P">Perempuan</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="tanggal_lahir">Tanggal Lahir</label>
                                    <input type="date" name="tanggal_lahir" id="tanggal_lahir" class="form-control" placeholder="YYYY-MM-DD" pattern="\d{4}-\d{2}-\d{2}" required>
                                </div>
                                <div class="form-group">
                                    <label>Alamat</label>
                                    <input type="text" name="alamat" id="alamat" class="form-control" placeholder="Alamat">
                                </div>
                            </div>
                            <!-- /.col-md-6 -->

                            <!-- Kolom Kanan -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>No Telepon</label>
                                    <input type="text" name="no_telepon" id="no_telepon" class="form-control" placeholder="No Telepon">
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" name="email" id="email" class="form-control" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <label>Posisi</label>
                                    <input type="text" name="posisi" id="posisi" class="form-control" placeholder="Posisi">
                                </div>
                                <div class="form-group">
                                    <label>Bidang</label>
                                    <select name="bidang" id="bidang" class="form-control" required>
                                        <option value="">-- Pilih Bidang --</option>
                                        <?php
                                        $query_bidang = mysqli_query($koneksi, "SELECT `id`, `nama_bidang` FROM `bidang`");
                                        while ($row_bidang = mysqli_fetch_assoc($query_bidang)) {
                                            echo '<option value="' . $row_bidang['id'] . '">' . $row_bidang['nama_bidang'] . '</option>';
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Gambar</label><br>
                                    <input type="file" name="gambar" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="tanggal_masuk">Tanggal Masuk</label>

                                    <input type="date" name="tanggal_masuk" id="tanggal_masuk" class="form-control" placeholder="YYYY-MM-DD" pattern="\d{4}-\d{2}-\d{2}" required>
                                </div>
                            </div>
                            <!-- /.col-md-6 -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <input type="submit" name="tambah" value="tambah" class="btn btn-info">
                        <a href="?page=MyApp/data_pegawai" class="btn btn-warning">Batal</a>
                    </div>
                </form>
            </div>
            <!-- /.box -->
        </div>
    </div>
</section>
<?php


