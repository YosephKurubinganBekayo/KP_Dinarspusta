<?php
if (isset($_GET['nik']) && isset($_GET['tanggal'])) {
    // Ambil parameter NIK dan tanggal
    $nik = $_GET['nik'];
    $tanggal = $_GET['tanggal'];

    // Mulai transaksi
    $koneksi->begin_transaction();

    try {
        // Hapus data kunjungan berdasarkan NIK dan tanggal
        $delete_query = $koneksi->query("
            DELETE FROM pengunjung_buku
            WHERE pengunjung_NIK = '$nik' AND tanggal_baca = '$tanggal'
        ");

        // Periksa apakah penghapusan berhasil
        if (!$delete_query) {
            throw new Exception("Gagal menghapus data kunjungan untuk NIK: $nik pada tanggal: $tanggal");
        }

        // Commit transaksi jika penghapusan berhasil
        $koneksi->commit();

        echo "<script>
            Swal.fire({title: 'Hapus Data Kunjungan Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'})
            .then((result) => {
                if (result.value) {
                    window.location = 'index.php?page=MyApp/data_kunjungan';
                }
            })
        </script>";
    } catch (Exception $e) {
        // Rollback jika terjadi kesalahan
        $koneksi->rollback();

        echo "<script>
            Swal.fire({title: 'Hapus Data Kunjungan Gagal', text: 'Error: " . addslashes($e->getMessage()) . "', icon: 'error', confirmButtonText: 'OK'})
            .then((result) => {
                if (result.value) {
                    window.history.back();
                }
            })
        </script>";
    }
} else {
    echo "<script>
        Swal.fire({title: 'Parameter Tidak Lengkap', text: 'Harap sertakan NIK dan tanggal kunjungan.', icon: 'warning', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.history.back();
            }
        })
    </script>";
}
?>
