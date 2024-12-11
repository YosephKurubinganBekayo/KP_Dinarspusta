<?php
// Pastikan koneksi ke database tersedia

// Cek apakah parameter ID tersedia
if (isset($_GET['kode'])) {
    $id_inbox = intval($_GET['kode']); // Pastikan ID adalah angka

    // Query untuk mengambil detail pesan berdasarkan ID
    $query = $koneksi->query("SELECT * FROM tbl_inbox WHERE id_inbox = $id_inbox");

    // Periksa apakah data ditemukan
    if ($query->num_rows > 0) {
        $data = $query->fetch_assoc();
    } else {
        echo "<script>alert('Pesan tidak ditemukan!'); window.location.href = 'lihat_semua_pesan.php';</script>";
        exit;
    }
} else {
    echo "<script>alert('ID pesan tidak ditemukan!'); window.location.href = 'lihat_semua_pesan.php';</script>";
    exit;
}
?>

<section class="content">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h1>Detail Pesan</h1>
        </div>
        <div class="box-body">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3><?php echo htmlspecialchars($data['subject_inbox']); ?></h3>
                </div>
                <div class="card-body">
                    <p><strong>Nama Pengirim:</strong> <?php echo htmlspecialchars($data['name_inbox']); ?></p>
                    <p><strong>Email Pengirim:</strong>
                        <a href="mailto:<?php echo htmlspecialchars($data['email_inbox']); ?>">
                            <?php echo htmlspecialchars($data['email_inbox']); ?>
                        </a>
                    </p>
                    <p><strong>Tanggal Terima:</strong> <?php echo htmlspecialchars($data['date_receive_inbox']); ?></p>
                    <hr>
                    <h4>Isi Pesan</h4>
                    <p><?php echo nl2br(htmlspecialchars($data['message_inbox'])); ?></p>
                </div>
                <div class="card-footer text-end">
                    <a href="?page=MyApp/data_pesan" class="btn btn-primary">Kembali</a>
                    <a href="?page=MyApp/del_pesan&kode=<?php echo $data['id_inbox']; ?>"
                        class="btn btn-danger"
                        onclick="return confirm('Yakin ingin menghapus pesan ini?');">Hapus</a>
                </div>
            </div>
        </div>
    </div>
</section>