<?php
// Koneksi ke database

if (isset($_GET['kode'])) {
    $id_profile = $_GET['kode'];

    // Ambil data gambar untuk dihapus dari folder
    $sql = $koneksi->query("SELECT pict_aboutus FROM tbl_aboutus WHERE id_aboutus = '$id_profile'");
    $data = $sql->fetch_assoc();
    $gambar = $data['pict_aboutus'];

    // Hapus data dari database
    $query_hapus = $koneksi->query("DELETE FROM tbl_aboutus WHERE id_aboutus = '$id_profile'");

    if ($query_hapus) {
        // Hapus file gambar jika ada
        if ($gambar && file_exists("../img/" . $gambar)) {
            unlink("../img/" . $gambar);
        }

        echo "<script>
        Swal.fire({title: 'Hapus Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/tentang_kami';
            }
        })</script>";
    } else {
        echo "<script>
        Swal.fire({title: 'Hapus Data Gagal',text: 'Terjadi kesalahan saat menghapus data.',icon: 'error',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/tentang_kami';
            }
        })</script>";
    }
}
?>
