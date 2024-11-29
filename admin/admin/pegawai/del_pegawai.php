<?php
// Koneksi database
if (isset($_GET['kode'])) {
    $nip = $_GET['kode']; // Mengambil NIP pegawai yang ingin dihapus

    // Ambil data pegawai berdasarkan NIP untuk mendapatkan informasi gambar yang terasosiasi
    $query = $koneksi->query("SELECT * FROM tb_pegawai WHERE NIP = '$nip'");
    $data = $query->fetch_assoc();
    
    // Proses Hapus Data
    $gambar = $data['gambar_sk']; // Ambil nama gambar
    if ($gambar) {
        $gambar_path = "../img/" . $gambar; // Lokasi gambar di server
        if (file_exists($gambar_path)) {
            unlink($gambar_path); // Hapus gambar dari folder jika ada
        }
    }

    // Query untuk menghapus data pegawai
    $sql_hapus = "DELETE FROM tb_pegawai WHERE NIP = '$nip'";
    $query_hapus = mysqli_query($koneksi, $sql_hapus);

    if ($query_hapus) {
        echo "<script>
        Swal.fire({title: 'Hapus Data Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/data_pegawai';
            }
        })</script>";
    } else {
        echo "<script>
        Swal.fire({title: 'Hapus Data Gagal', text: '', icon: 'error', confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/data_pegawai';
            }
        })</script>";
    }
}
?>
