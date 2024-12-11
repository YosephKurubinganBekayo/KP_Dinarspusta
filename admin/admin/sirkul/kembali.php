<?php
if (isset($_GET['kode'])) {
    $id_sk = $_GET['kode'];
    $tgl_dikembalikan = date('Y-m-d');

    // Memulai transaksi
    $koneksi->begin_transaction();

    try {
        // Update status di tabel tb_sirkulasi
        $sql_ubah = "UPDATE tb_sirkulasi 
                     SET status = 'KEM', tgl_dikembalikan = '$tgl_dikembalikan', id_petugas = '$data_id' 
                     WHERE id_sk = '$id_sk'";
        if (!$koneksi->query($sql_ubah)) {
            throw new Exception("Gagal mengupdate status peminjaman: " . $koneksi->error);
        }

        // Ambil id_buku berdasarkan id_sk untuk menambah stok buku
        $sql_buku = "SELECT id_buku FROM tb_sirkulasi WHERE id_sk = '$id_sk'";
        $result_buku = $koneksi->query($sql_buku);
        if ($result_buku->num_rows > 0) {
            $row = $result_buku->fetch_assoc();
            $id_buku = $row['id_buku'];

            // Update stok buku
            $sql_update_stok = "UPDATE buku SET eksamplar = eksamplar + 1 WHERE no_induk = '$id_buku'";
            if (!$koneksi->query($sql_update_stok)) {
                throw new Exception("Gagal mengupdate stok buku: " . $koneksi->error);
            }
        } else {
            throw new Exception("Buku tidak ditemukan dalam tabel tb_sirkulasi.");
        }

        // Commit transaksi
        $koneksi->commit();

        echo "<script>
        Swal.fire({
            title: 'Pengembalian Buku Berhasil',
            text: '',
            icon: 'success',
            confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location = 'index.php?page=data_sirkul';
            }
        });
        </script>";
    } catch (Exception $e) {
        // Rollback jika ada kesalahan
        $koneksi->rollback();

        echo "<script>
        Swal.fire({
            title: 'Pengembalian Buku Gagal',
            text: '" . $e->getMessage() . "',
            icon: 'error',
            confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location = 'index.php?page=data_sirkul';
            }
        });
        </script>";
    }

    // Tutup koneksi
    mysqli_close($koneksi);
}
?>
