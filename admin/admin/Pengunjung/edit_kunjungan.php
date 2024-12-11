<?php
// Ambil data kunjungan berdasarkan ID (atau pengenal unik lainnya)
// if (isset($_GET['kode'])) {
//   $id_kunjungan = $_GET['kode'];
//   $query = $koneksi->query("SELECT * FROM pengunjung_buku WHERE id = '$id_kunjungan'");
//   $data_kunjungan = $query->fetch_assoc();
// }
// Ambil data kunjungan berdasarkan ID pengunjung dan tanggal

if (isset($_GET['nik']) && isset($_GET['tanggal'])) {
  $nik = $_GET['nik'];
  $tanggal = $_GET['tanggal'];

  // Query untuk mendapatkan data kunjungan
  $query = $koneksi->query("
      SELECT pb.*, GROUP_CONCAT(b.no_induk SEPARATOR ',') AS buku_ids
      FROM pengunjung_buku pb
      JOIN buku b ON pb.id_buku = b.no_induk
      WHERE pb.pengunjung_NIK = '$nik' AND pb.tanggal_baca = '$tanggal'
      GROUP BY pb.pengunjung_NIK, pb.tanggal_baca
  ");
  $data_kunjungan = $query->fetch_assoc();
  $buku_terpilih = isset($data_kunjungan['buku_ids']) ? explode(',', $data_kunjungan['buku_ids']) : [];
}


if (isset($_GET['kode'])) {
  $id_kunjungan = $_GET['kode'];

  // Query untuk mendapatkan daftar buku terkait kunjungan
  $query = $koneksi->query("
      SELECT GROUP_CONCAT(b.no_induk SEPARATOR ',') AS buku_ids
      FROM pengunjung_buku pb
      JOIN buku b ON pb.id_buku = b.no_induk
      WHERE pb.id = '$id_kunjungan'
  ");

  $data_kunjungan = $query->fetch_assoc();
  $buku_terpilih = isset($data_kunjungan['buku_ids']) ? explode(',', $data_kunjungan['buku_ids']) : [];
}


if (isset($_POST['edit_kunjungan'])) {
    $pengunjung_NIK = $_POST['pengunjung_NIK']; // ID pengunjung
    $id_buku_baru = $_POST['id_buku']; // Array ID buku baru
    $tanggal_baca = $_POST['tanggal_baca']; // Tanggal kunjungan

    // Ambil data buku lama dari database
    $buku_lama = [];
    $query_buku_lama = $koneksi->query("
        SELECT id, id_buku 
        FROM pengunjung_buku 
        WHERE pengunjung_NIK = '$pengunjung_NIK' AND tanggal_baca = '$tanggal_baca'
    ");
    while ($row = $query_buku_lama->fetch_assoc()) {
        $buku_lama[$row['id']] = $row['id_buku']; // Simpan ID kunjungan dan ID buku
    }

    // Buku baru dalam bentuk array (ID kunjungan tidak ada karena baru)
    $id_buku_baru_map = array_flip($id_buku_baru);

    // Mulai transaksi
    $koneksi->begin_transaction();

    try {
        // Proses ubah buku
        foreach ($buku_lama as $id_kunjungan => $id_buku) {
            if (isset($id_buku_baru_map[$id_buku])) {
                // Buku tetap ada, tidak perlu diubah
                unset($id_buku_baru_map[$id_buku]);
            } elseif (!in_array($id_buku, $id_buku_baru)) {
                // Buku dihapus, hapus dari database
                $delete_query = $koneksi->query("
                    DELETE FROM pengunjung_buku WHERE id = '$id_kunjungan'
                ");
                if (!$delete_query) {
                    throw new Exception("Gagal menghapus kunjungan dengan ID: $id_kunjungan");
                }
            } else {
                // Buku diubah, update dengan ID baru
                $id_buku_baru_key = key($id_buku_baru_map); // Ambil ID buku baru
                $update_query = $koneksi->query("
                    UPDATE pengunjung_buku 
                    SET id_buku = '$id_buku_baru_key' 
                    WHERE id = '$id_kunjungan'
                ");
                if (!$update_query) {
                    throw new Exception("Gagal memperbarui buku ID: $id_buku_baru_key");
                }
                unset($id_buku_baru_map[$id_buku_baru_key]); // Hapus dari buku baru
            }
        }

        // Tambahkan buku baru yang belum ada
        foreach (array_keys($id_buku_baru_map) as $id_buku_tambah) {
            $insert_query = $koneksi->query("
                INSERT INTO pengunjung_buku (pengunjung_NIK, id_buku, tanggal_baca)
                VALUES ('$pengunjung_NIK', '$id_buku_tambah', '$tanggal_baca')
            ");
            if (!$insert_query) {
                throw new Exception("Gagal menambahkan buku ID: $id_buku_tambah");
            }
        }

        // Commit transaksi jika semua berhasil
        $koneksi->commit();

        echo "<script>
            Swal.fire({title: 'Edit Data Kunjungan Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'})
            .then((result) => {
                if (result.value) {
                    window.location = 'index.php?page=MyApp/data_kunjungan';
                }
            })
            </script>";
    } catch (Exception $e) {
        // Rollback jika ada error
        $koneksi->rollback();

        echo "<script>
            Swal.fire({title: 'Edit Data Kunjungan Gagal', text: 'Error: " . addslashes($e->getMessage()) . "', icon: 'error', confirmButtonText: 'OK'})
            .then((result) => {
                if (result.value) {
                    window.history.back();
                }
            })
            </script>";
    }
}

?>
<section class="content-header" style="text-align: center;">
  <h1>Edit Data Kunjungan</h1>
</section>

<!-- Main content -->
<section class="content">
  <div class="box box-primary">
    <div class="box-header with-border">
      <h3 class="box-title">Form Edit Data Kunjungan</h3>
    </div>
    <form action="" method="post">
      <div class="box-body">

        <div class="form-group">
          <label for="pengunjung">Pengunjung</label>
          <select name="pengunjung_NIK" id="pengunjung" class="form-control select2" required>
            <option value="">Pilih Pengunjung</option>
            <?php
            $sql_pengunjung = $koneksi->query("SELECT * FROM pengunjung");
            while ($data_pengunjung = $sql_pengunjung->fetch_assoc()) {
              $selected = $data_kunjungan['pengunjung_NIK'] == $data_pengunjung['NIK'] ? 'selected' : '';
            ?>
              <option value="<?php echo $data_pengunjung['NIK']; ?>" <?php echo $selected; ?>>
                <?php echo $data_pengunjung['nama']; ?>
              </option>
            <?php
            }
            ?>
          </select>
        </div>
        <div class="form-group">
          <label for="buku">Buku</label>
          <select name="id_buku[]" id="buku" class="form-control select2" multiple required>
            <?php
            $sql_buku = $koneksi->query("SELECT * FROM buku");
            while ($data_buku = $sql_buku->fetch_assoc()) {
              $selected = in_array($data_buku['no_induk'], $buku_terpilih) ? 'selected' : '';
            ?>
              <option value="<?php echo htmlspecialchars($data_buku['no_induk'], ENT_QUOTES, 'UTF-8'); ?>" <?php echo $selected; ?>>
                <?php echo htmlspecialchars($data_buku['judul_buku'], ENT_QUOTES, 'UTF-8'); ?>
              </option>
            <?php
            }
            ?>
          </select>
        </div>
        <div class="form-group">
          <label for="tanggal_baca">Tanggal Kunjung</label>
          <input type="date" name="tanggal_baca" id="tanggal_baca" class="form-control" value="<?php echo $data_kunjungan['tanggal_baca']; ?>" required>
        </div>
      </div>
      <div class="box-footer">
        <button type="submit" name="edit_kunjungan" class="btn btn-primary">Simpan Perubahan</button>
        <a href="index.php?page=MyApp/data_kunjungan" class="btn btn-warning">Batal</a>
      </div>
    </form>
  </div>
</section>