<?php include 'koneksi.php' ?>
<!DOCTYPE html>
<html lang="id">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tambah Riwayat Pembacaan</title>
  <link rel="stylesheet" href="../../bootstrap5/css/bootstrap.css"> <!-- Link ke Bootstrap -->
</head>

<body>

  <section class="content-header" style="text-align: center;">
    <h1>Tambah Riwayat Pembacaan</h1>
  </section>

  <section class="content">
    <div class="box box-primary">
      <div class="box-header with-border">
        <h3 class="box-title">Form Tambah Riwayat Pembacaan</h3>
      </div>
      <div class="box-body">
        <form method="POST" id="riwayatForm" action="?page=MyApp/save_reading">

          <!-- Pencarian Pengunjung -->
          <div class="form-group">
            <label for="searchPengunjung">Cari Pengunjung</label>
            <input type="text" id="searchPengunjung" class="form-control" placeholder="Cari Nama atau Nomor HP">
            <button type="button" id="btnSearch" class="btn btn-primary">Cari</button> <!-- Tombol Pencarian -->
            <ul id="pengunjungList" style="list-style: none; padding: 0; display: none;"></ul> <!-- Daftar hasil pencarian -->
            <input type="hidden" name="pengunjung_NIK" id="pengunjung_NIK"> <!-- NIK tersembunyi -->
          </div>


          <!-- Form untuk Pengunjung Baru -->
          <div id="dataPengunjungBaru" style="display: none;">
            <h4>Data Pengunjung Baru</h4>
            <div class="form-group">
              <label for="nama">Nama Pengunjung</label>
              <input type="text" name="nama" id="nama" class="form-control" placeholder="Masukkan Nama Pengunjung">
            </div>
            <div class="form-group">
              <label for="jk">Jenis Kelamin</label>
              <select name="jk" id="jk" class="form-control">
                <option value="">Pilih Jenis Kelamin</option>
                <option value="Laki-laki">Laki-laki</option>
                <option value="Perempuan">Perempuan</option>
              </select>
            </div>
            <div class="form-group">
              <label for="no_hp">Nomor HP</label>
              <input type="text" name="no_hp" id="no_hp" class="form-control" placeholder="Masukkan Nomor HP">
            </div>
          </div>

          <!-- Pilih Buku -->
          <div class="form-group">
            <label for="buku">Buku</label>
            <select name="id_buku" id="buku" class="form-control">
              <option value="">Pilih Buku</option>
              <!-- Buku akan dimuat di sini menggunakan PHP -->
              <?php
              $sql_buku = $koneksi->query("SELECT * FROM buku");
              while ($data_buku = $sql_buku->fetch_assoc()) {
                echo "<option value='{$data_buku['no_induk']}'>{$data_buku['judul_buku']}</option>";
              }
              ?>
            </select>
          </div>

          <!-- Tanggal Pembacaan -->
          <div class="form-group">
            <label for="tanggal_baca">Tanggal Baca</label>
            <input type="date" name="tanggal_baca" id="tanggal_baca" class="form-control" required>
          </div>

          <button type="submit" class="btn btn-primary">Simpan</button>
          <a href="?page=MyApp/reading_history" class="btn btn-danger">Batal</a>
        </form>
      </div>
    </div>
  </section>

  <!-- Tambahkan link ke Bootstrap JS (Opsional) -->
  <script src="../../bootstrap5/js/bootstrap.js"></script>

  <!-- Kode JavaScript untuk Pencarian Pengunjung -->
  <script>
    // Event listener untuk tombol pencarian
    document.getElementById('btnSearch').addEventListener('click', function() {
      const query = document.getElementById('searchPengunjung').value.trim();
      const pengunjungList = document.getElementById('pengunjungList');

      // Validasi input pencarian, pastikan minimal 3 karakter
      if (query.length < 3) {
        alert('Masukkan minimal 3 karakter untuk pencarian.');
        return;
      }

      pengunjungList.innerHTML = ''; // Bersihkan daftar hasil pencarian sebelumnya

      // Mengirim request AJAX
      const xhr = new XMLHttpRequest();
      xhr.open('POST', 'search_pengunjung.php', true); // Pastikan URL sesuai
      xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

      // Ketika data diterima dari server
      xhr.onload = function() {
        if (xhr.status === 200) {
          const response = JSON.parse(xhr.responseText);

          // Jika ada hasil pencarian
          if (response.length > 0) {
            response.forEach((pengunjung) => {
              const li = document.createElement('li');
              li.textContent = `${pengunjung.nama} - ${pengunjung.no_hp}`;
              li.style.cursor = 'pointer';

              // Klik pada item hasil pencarian
              li.onclick = function() {
                document.getElementById('searchPengunjung').value = pengunjung.nama;
                document.getElementById('pengunjung_NIK').value = pengunjung.NIK;
                pengunjungList.style.display = 'none';
              };

              pengunjungList.appendChild(li);
            });

            pengunjungList.style.display = 'block'; // Tampilkan daftar pencarian
          } else {
            // Jika tidak ada hasil pencarian
            pengunjungList.style.display = 'none';
            document.getElementById('dataPengunjungBaru').style.display = 'block'; // Tampilkan form pengunjung baru
          }
        }
      };

      // Tangani error AJAX
      xhr.onerror = function() {
        console.error('Terjadi kesalahan dalam permintaan AJAX.');
      };

      // Kirimkan query pencarian ke server
      xhr.send('query=' + encodeURIComponent(query));
    });
  </script>


</body>

</html>