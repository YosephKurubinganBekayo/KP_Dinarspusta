<?php
// Koneksi database
if (isset($_GET['kode'])) {
    $nip = $_GET['kode']; // Mengambil NIP yang ingin diedit

    // Ambil data pegawai berdasarkan NIP
    $query = $koneksi->query("SELECT * FROM tb_pegawai WHERE NIP = '$nip'");
    $data = $query->fetch_assoc();
}
?>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Edit Pegawai <small>Data Pegawai</small></h3>
                </div>
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="box-body">
                        <div class="row">
                            <!-- Kolom Kiri -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>NIP</label>
                                    <input type="number" name="id_pegawai" id="id_pegawai" class="form-control" value="<?php echo $data['NIP']; ?>" readonly>
                                </div>
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input type="text" name="nama" id="nama" class="form-control" value="<?php echo $data['nama']; ?>" required>
                                </div>

                                <div class="form-group">
                                    <label>Jenis Kelamin</label>
                                    <select name="jenis_kelamin" id="jenis_kelamin" class="form-control" required>
                                        <option value="L" <?php if ($data['jenis_kelamin'] == 'L') echo 'selected'; ?>>Laki-laki</option>
                                        <option value="P" <?php if ($data['jenis_kelamin'] == 'P') echo 'selected'; ?>>Perempuan</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="tanggal_lahir">Tanggal Lahir</label>
                                    <input type="date" name="tanggal_lahir" id="tanggal_lahir" class="form-control" value="<?php echo $data['tanggal_lahir']; ?>" required>
                                </div>
                                <div class="form-group">
                                    <label>Alamat</label>
                                    <input type="text" name="alamat" id="alamat" class="form-control" value="<?php echo $data['alamat']; ?>" required>
                                </div>
                            </div>
                            <!-- /.col-md-6 -->

                            <!-- Kolom Kanan -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>No Telepon</label>
                                    <input type="text" name="no_telepon" id="no_telepon" class="form-control" value="<?php echo $data['no_telepon']; ?>" required>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" name="email" id="email" class="form-control" value="<?php echo $data['email']; ?>" required>
                                </div>
                                <div class="form-group">
                                    <label>Posisi</label>
                                    <input type="text" name="posisi" id="posisi" class="form-control" value="<?php echo $data['posisi']; ?>" required>
                                </div>
                                <div class="form-group">
                                    <label>Bidang</label>
                                    <select name="bidang" id="bidang" class="form-control" required>
                                        <?php
                                        $query_bidang = mysqli_query($koneksi, "SELECT `id`, `nama_bidang` FROM `bidang`");
                                        while ($row_bidang = mysqli_fetch_assoc($query_bidang)) {
                                            echo '<option value="' . $row_bidang['id'] . '"';
                                            if ($data['id_bidang'] == $row_bidang['id']) {
                                                echo ' selected';
                                            }
                                            echo '>' . $row_bidang['nama_bidang'] . '</option>';
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Gambar</label><br>
                                    <input type="file" name="gambar" class="form-control">
                                    <?php if ($data['gambar_sk']) { ?>
                                        <img src="../img/<?php echo $data['gambar_sk']; ?>" alt="Gambar Pegawai" width="100" height="100">
                                    <?php } ?>
                                </div>
                                <div class="form-group">
                                    <label for="tanggal_masuk">Tanggal Masuk</label>
                                    <input type="date" name="tanggal_masuk" id="tanggal_masuk" class="form-control" value="<?php echo $data['tanggal_masuk']; ?>" required>
                                </div>
                            </div>
                            <!-- /.col-md-6 -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <input type="submit" name="edit" value="Simpan Perubahan" class="btn btn-info">
                        <a href="?page=MyApp/data_pegawai" class="btn btn-warning">Batal</a>
                    </div>
                </form>
            </div>
            <!-- /.box -->
        </div>
    </div>
</section>

<?php
// Proses Edit Data
if (isset($_POST['edit'])) {
    $id_pegawai = $_POST['id_pegawai'];
    $nama = $_POST['nama'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $alamat = $_POST['alamat'];
    $no_telepon = $_POST['no_telepon'];
    $email = $_POST['email'];
    $posisi = $_POST['posisi'];
    $bidang = $_POST['bidang'];
    $tanggal_masuk = $_POST['tanggal_masuk'];

    // Periksa jika ada gambar baru yang diupload
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

        // Cek jika uploadOk berhasil
        if ($uploadOk == 1) {
            if (move_uploaded_file($_FILES["gambar"]["tmp_name"], $target_file)) {
                $gambar = $gambar_baru; // Gambar yang baru diupload
            } else {
                echo "<script>alert('Gagal mengupload gambar.');</script>";
                $gambar = null;
            }
        } else {
            $gambar = null;
        }
    } else {
        $gambar = $data['gambar_sk']; // Jika tidak ada gambar baru, gunakan gambar lama
    }

    // Query untuk update data pegawai
    $query_edit = $koneksi->query("UPDATE tb_pegawai SET 
        nama = '$nama',
        jenis_kelamin = '$jenis_kelamin',
        tanggal_lahir = '$tanggal_lahir',
        alamat = '$alamat',
        no_telepon = '$no_telepon',
        email = '$email',
        posisi = '$posisi',
        id_bidang = '$bidang',
        tanggal_masuk = '$tanggal_masuk',
        gambar_sk = '$gambar'
        WHERE NIP = '$id_pegawai'");

    if ($query_edit) {
        echo "<script>
        Swal.fire({title: 'Edit Data Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/data_pegawai';
            }
        })</script>";
    } else {
        echo "<script>
        Swal.fire({title: 'Edit Data Gagal', text: '', icon: 'error', confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/edit_pegawai&kode=$id_pegawai';
            }
        })</script>";
    }
}
?>
