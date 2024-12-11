<?php
// Pastikan koneksi ke database tersedia
// Periksa apakah parameter kode tersedia
if (isset($_GET['kode'])) {
    $id_inbox = intval($_GET['kode']); // Pastikan ID adalah angka

    // Query untuk menghapus data dari database
    $query_hapus = $koneksi->query("DELETE FROM tbl_inbox WHERE id_inbox = $id_inbox");

    if ($query_hapus) {
        // SweetAlert untuk notifikasi sukses
        echo "<script>
        Swal.fire({title: 'Hapus Pesan Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location = 'index.php?page=MyApp/data_pesan';
            }
        })
        </script>";
    } else {
        // SweetAlert untuk notifikasi gagal
        echo "<script>
        Swal.fire({title: 'Hapus Pesan Gagal',text: 'Terjadi kesalahan saat menghapus pesan.',icon: 'error',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location = 'index.php?page=MyApp/data_pesan';
            }
        })
        </script>";
    }
} else {
    // Jika parameter kode tidak ditemukan
    echo "<script>
    Swal.fire({title: 'ID Tidak Ditemukan',text: 'Tidak ada ID pesan yang diberikan.',icon: 'warning',confirmButtonText: 'OK'
    }).then((result) => {
        if (result.isConfirmed) {
            window.location = 'index.php?page=MyApp/data_pesan';
        }
    })
    </script>";
}
?>
