<?php
if (isset($_GET['kode'])) {
  $id_layanan = $_GET['kode'];

  // Ambil nama file gambar dari database
  $query_select = $koneksi->query("SELECT gambar FROM layanan WHERE id = '$id_layanan'");
  $data = $query_select->fetch_assoc();
  $gambar = $data['gambar'];

  // Hapus file gambar jika ada
  if ($gambar && file_exists("../img/" . $gambar)) {
    unlink("../img/" . $gambar); // Hapus file gambar
  }

  // Query hapus data
  $query_hapus = $koneksi->query("DELETE FROM layanan WHERE id = '$id_layanan'");

  if ($query_hapus) {
    echo "<script>
        Swal.fire({title: 'Hapus Data Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/layanan';
            }
        });
        </script>";
  } else {
    echo "<script>
        Swal.fire({title: 'Hapus Data Gagal', text: '', icon: 'error', confirmButtonText: 'OK'})
        .then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/layanan';
            }
        });
        </script>";
  }
}
