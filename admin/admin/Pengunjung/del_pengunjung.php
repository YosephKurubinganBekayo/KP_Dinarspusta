<?php
// Cek apakah parameter 'nik' ada di URL
if (isset($_GET['nik'])) {
    $nik = $_GET['nik'];

    // Cek apakah pengunjung sudah menjadi anggota
    $cek_anggota = $koneksi->query("SELECT * FROM tb_anggota WHERE nik = '$nik'");

    // Jika pengunjung adalah anggota, hapus juga data di tb_anggota
    if ($cek_anggota->num_rows > 0) {
        // Hapus data anggota
        $sql_hapus_anggota = "DELETE FROM tb_anggota WHERE nik = '$nik'";

        // Hapus data pengunjung
        $sql_hapus_pengunjung = "DELETE FROM pengunjung WHERE NIK = '$nik'";

        if ($koneksi->query($sql_hapus_anggota) && $koneksi->query($sql_hapus_pengunjung)) {
            echo "<script>
                Swal.fire({
                    title: 'Data Pengunjung dan Anggota Berhasil Dihapus',
                    icon: 'success',
                    confirmButtonText: 'OK'
                }).then((result) => {
                    if (result.value) {
                        window.location = 'index.php?page=MyApp/data_pengunjung';
                    }
                });
            </script>";
        } else {
            echo "<script>
                Swal.fire({
                    title: 'Gagal Menghapus Data',
                    icon: 'error',
                    confirmButtonText: 'OK'
                }).then((result) => {
                    if (result.value) {
                        window.location = 'index.php?page=MyApp/data_pengunjung';
                    }
                });
            </script>";
        }
    } else {
        // Jika bukan anggota, hanya hapus data pengunjung
        $sql_hapus_pengunjung = "DELETE FROM pengunjung WHERE NIK = '$nik'";

        if ($koneksi->query($sql_hapus_pengunjung)) {
            echo "<script>
                Swal.fire({
                    title: 'Data Pengunjung Berhasil Dihapus',
                    icon: 'success',
                    confirmButtonText: 'OK'
                }).then((result) => {
                    if (result.value) {
                        window.location = 'index.php?page=MyApp/data_pengunjung';
                    }
                });
            </script>";
        } else {
            echo "<script>
                Swal.fire({
                    title: 'Gagal Menghapus Data Pengunjung',
                    icon: 'error',
                    confirmButtonText: 'OK'
                }).then((result) => {
                    if (result.value) {
                        window.location = 'index.php?page=MyApp/data_pengunjung';
                    }
                });
            </script>";
        }
    }
}
?>
