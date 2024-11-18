<?php

// $carikode = mysqli_query($koneksi, "SELECT id_buku FROM buku order by id_buku desc");
// $datakode = mysqli_fetch_array($carikode);
// $kode = $datakode['id_buku'];
// $urut = substr($kode, 1, 3);
// $tambah = (int) $urut + 1;

// if (strlen($tambah) == 1) {
//     $format = "00" . $tambah;
// } else if (strlen($tambah) == 2) {
//     $format = "0" . $tambah;
// } else if (strlen($tambah) == 3) {
//     $format = $tambah;
// }
?>
<?php
$carikode = mysqli_query($koneksi, "SELECT id_buku FROM buku ORDER BY CAST(id_buku AS UNSIGNED) DESC LIMIT 1");
$datakode = mysqli_fetch_array($carikode);

// Jika ada data sebelumnya, ambil ID terakhir dan tambahkan 1
if ($datakode) {

    $kode_terakhir = (int) $datakode['id_buku'];
    $id_buku_baru = $kode_terakhir + 1;
    if (strlen($id_buku_baru) == 1) {
        $format = "00" . $id_buku_baru;
    } else if (strlen($id_buku_baru) == 2) {
        $format = "0" . $id_buku_baru;
    } else if (strlen($id_buku_baru) >= 3) {
        $format = $id_buku_baru;
    }
} else {
    // Jika belum ada data, mulai dari 1
    $id_buku_baru = 1;
    $format = "00" . $id_buku_baru;
}

// Menampilkan ID buku baru
// echo $id_buku_baru;
?>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Tambah Buku</h3>
                </div>
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="box-body">
                        <div class="row">
                            <!-- Kolom Kiri -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>ID Buku</label>
                                    <input type="text" name="id_buku" id="id_buku" class="form-control" value="<?php echo $format; ?>" readonly />
                                </div>

                                <div class="form-group">
                                    <label for="tanggal_terima">Tanggal Terima</label>
                                    <input type="date" name="tanggal_terima" id="tanggal_terima" class="form-control" placeholder="YYYY-MM-DD" pattern="\d{4}-\d{2}-\d{2}" required>
                                </div>

                                <div class="form-group">
                                    <label>No Induk</label>
                                    <input type="text" name="no_induk" id="no_induk" class="form-control" placeholder="id/dinarspus/tahun" readonly>
                                </div>

                                <div class="form-group">
                                    <label>Judul Buku</label>
                                    <input type="text" name="judul_buku" id="judul_buku" class="form-control" placeholder="Judul Buku" required>
                                </div>

                                <div class="form-group">
                                    <label>Pengarang</label>
                                    <input type="text" name="pengarang" id="pengarang" class="form-control" placeholder="Nama Pengarang" required>
                                </div>
                            </div>
                            <!-- /.col-md-6 -->

                            <!-- Kolom Kanan -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Penerbit</label>
                                    <input type="text" name="penerbit" id="penerbit" class="form-control" placeholder="Penerbit" required>
                                </div>

                                <div class="form-group">
                                    <label>No Kelas</label>
                                    <input type="number" name="no_kelas" id="no_kelas" class="form-control" placeholder="No kelas" required>
                                </div>

                                <div class="form-group">
                                    <label>Eksampler</label>
                                    <input type="number" name="eksamplar" id="eksamplar" class="form-control" placeholder="Eksampler" required>
                                </div>

                                <div class="form-group">
                                    <label>Jenis</label>

                                    <select name="jenis" id="jenis" class="form-control" required>
                                        <option value="">Pilih Jenis</option>
                                        <option value="F">F</option>
                                        <option value="NF">NF</option>
                                        <option value="R">R</option>
                                    </select>
                                    <input type="text" name="jenis_manual" id="jenis_manual" class="form-control" placeholder="Atau ketik jenis" oninput="setJenisValue()" />

                                </div>

                                <div class="form-group">
                                    <label>Keterangan</label>
                                    <input type="text" name="keterangan" id="keterangan" class="form-control" placeholder="Sumber buku" required>
                                </div>

                                <div class="form-group">
                                    <label>Harga</label>
                                    <input type="number" name="harga" id="harga" class="form-control" placeholder="Harga" required>
                                </div>
                            </div>
                            <!-- /.col-md-6 -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <input type="submit" name="Simpan" value="Simpan" class="btn btn-info">
                        <a href="?page=MyApp/data_buku" class="btn btn-warning">Batal</a>
                    </div>
                </form>
            </div>
            <!-- /.box -->
        </div>
    </div>
</section>

<script>
    // Fungsi untuk memperbarui No Induk berdasarkan ID Buku dan Tahun dari Tanggal Terima
    function updateNoInduk() {
        const idBuku = document.getElementById('id_buku').value;
        const tanggalTerima = document.getElementById('tanggal_terima').value;
        const tahun = tanggalTerima ? tanggalTerima.split('-')[0].slice(-2) : ''; // Ambil tahun dari Tanggal Terima

        // Format No Induk sebagai "id/dinarspus/tahun"
        const noInduk = tahun ? `${idBuku}/dinarspus/${tahun}` : '';

        // Update nilai di kolom No Induk
        document.getElementById('no_induk').value = noInduk;
    }

    // Tambahkan event listener untuk memantau perubahan di Tanggal Terima
    document.getElementById('tanggal_terima').addEventListener('change', updateNoInduk);

    // Fungsi dan event listener untuk kolom Jenis
    function setJenisValue() {
        const select = document.getElementById('jenis');
        const input = document.getElementById('jenis_manual');

        // Jika ada input di jenis_manual, atur value select menjadi kosong
        if (input.value) {
            select.value = ''; // Mengatur select menjadi tidak terpilih
        }
    }

    // Menambahkan event listener pada dropdown untuk mengosongkan input manual saat opsi dipilih
    document.getElementById('jenis').addEventListener('change', function() {
        if (this.value) {
            document.getElementById('jenis_manual').value = ''; // Kosongkan input manual
        }
    });
</script>


<?php

if (isset($_POST['Simpan'])) {

    $sql_simpan = "INSERT INTO buku (id_buku,tanggal_terima,no_induk,judul_buku,pengarang,penerbit,no_kelas,eksamplar,jenis,keterangan,harga) VALUES (
           '" . $_POST['id_buku'] . "',
          '" . $_POST['tanggal_terima'] . "',
          '" . $_POST['no_induk'] . "',
          '" . $_POST['judul_buku'] . "',
          '" . $_POST['pengarang'] . "',
          '" . $_POST['penerbit'] . "',
          '" . $_POST['no_kelas'] . "',
          '" . $_POST['eksamplar'] . "',
          '" . $_POST['jenis'] . "',
          '" . $_POST['keterangan'] . "',
          '" . $_POST['harga'] . "')";
    $query_simpan = mysqli_query($koneksi, $sql_simpan);
    mysqli_close($koneksi);

    if ($query_simpan) {

        echo "<script>
      Swal.fire({title: 'Tambah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
      }).then((result) => {
          if (result.value) {
              window.location = 'index.php?page=MyApp/data_buku';
          }
      })</script>";
    } else {
        echo "<script>
      Swal.fire({title: 'Tambah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
      }).then((result) => {
          if (result.value) {
              window.location = 'index.php?page=MyApp/add_buku';
          }
      })</script>";
    }
}
