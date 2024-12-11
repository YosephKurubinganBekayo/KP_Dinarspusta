<?php
// Pastikan koneksi database sudah dibuat sebelumnya
include '../../inc/search_pengunjung.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['query'])) {
    $query = $koneksi->real_escape_string($_POST['query']); // Menghindari SQL Injection
    $sql = $koneksi->query("SELECT NIK, nama, no_hp FROM pengunjung 
                            WHERE nama LIKE '%$query%' OR no_hp LIKE '%$query%'");

    $result = [];
    while ($row = $sql->fetch_assoc()) {
        $result[] = [
            'NIK' => $row['NIK'],
            'nama' => $row['nama'],
            'no_hp' => $row['no_hp']
        ];
    }

    // Kirim hasil dalam format JSON
    echo json_encode($result);
} else {
    echo json_encode([]); // Jika tidak ada data pencarian
}
?>
