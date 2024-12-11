<?php
if (isset($_GET['kode'])) {
    // Ambil informasi gambar terkait dari database
    $sql_select = "SELECT gambar FROM bidang WHERE id = '" . $_GET['kode'] . "'";
    $query_select = mysqli_query($koneksi, $sql_select);
    $data = mysqli_fetch_assoc($query_select);

    if ($data) {
        // Hapus file gambar jika ada
        $gambar_path = "../img/" . $data['gambar'];
        if (file_exists($gambar_path) && $data['gambar']) {
            unlink($gambar_path); // Menghapus file gambar
        }

        // Hapus data dari database
        $sql_hapus = "DELETE FROM bidang WHERE id='" . $_GET['kode'] . "'";
        $query_hapus = mysqli_query($koneksi, $sql_hapus);

        if ($query_hapus) {
            echo "<script>
            Swal.fire({title: 'Hapus Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
            }).then((result) => {
                if (result.value) {
                    window.location = 'index.php?page=MyApp/data_bidang';
                }
            })</script>";
        } else {
            echo "<script>
            Swal.fire({title: 'Hapus Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
            }).then((result) => {
                if (result.value) {
                    window.location = 'index.php?page=MyApp/data_bidang';
                }
            })</script>";
        }
    } else {
        echo "<script>
        Swal.fire({title: 'Data Tidak Ditemukan',text: 'Gagal mengambil data untuk dihapus.',icon: 'error',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/data_bidang';
            }
        })</script>";
    }
}
?>
