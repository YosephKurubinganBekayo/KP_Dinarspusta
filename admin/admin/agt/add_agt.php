<?php
$carikode = mysqli_query($koneksi, "SELECT id_anggota FROM tb_anggota ORDER BY id_anggota DESC");
$datakode = mysqli_fetch_array($carikode);
$kode = $datakode['id_anggota'];
$urut = substr($kode, 1, 3);
$tambah = (int) $urut + 1;

if (strlen($tambah) == 1) {
	$format = "A" . "00" . $tambah;
} else if (strlen($tambah) == 2) {
	$format = "A" . "0" . $tambah;
} else if (strlen($tambah) == 3) {
	$format = "A" . $tambah;
}

// Pastikan koneksi ke database sudah ada
if (isset($_GET['nik'])) {
    $nik = $_GET['nik'];

    // Ambil data pengunjung berdasarkan NIK
    $sql_pengunjung = $koneksi->query("SELECT * FROM pengunjung WHERE NIK = '$nik'");
    $data_pengunjung = $sql_pengunjung->fetch_assoc();

    // Masukkan data pengunjung ke dalam tabel anggota
    $sql_anggota = "INSERT INTO tb_anggota (id_anggota, nik, nama, jekel, alamat, no_hp, pekerjaan, instansi) 
                    VALUES ('$format', 
                            '".$data_pengunjung['NIK']."', 
                            '".$data_pengunjung['nama']."', 
                            '".$data_pengunjung['jenis_kelamin']."', 
                            '".$data_pengunjung['alamat']."', 
                            '".$data_pengunjung['no_hp']."', 
                            '".$data_pengunjung['pekerjaan']."', 
                            '".$data_pengunjung['asal_instansi']."')";

    if ($koneksi->query($sql_anggota)) {
        echo "<script>
            Swal.fire({
                title: 'Pengunjung Berhasil Menjadi Anggota',
                text: '',
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
                title: 'Gagal Menambahkan Anggota',
                text: '',
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
?>
