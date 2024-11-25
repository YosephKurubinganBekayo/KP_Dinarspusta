<!-- layanan Section start -->
<section id="layanan">
  <div class="container">
    <div class="header-layanan">
      <h2><span>Layanan</span> Kami</h2>
      <p class="px-50">
        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quam cum, assumenda odio excepturi numquam suscipit. Ut aliquam molestias animi vitae at fugiat, repellendus deleniti aperiam! Eos unde natus consequuntur harum.
      </p>

      <?php
      // Query bidang untuk mendapatkan semua data bidang
      $query_bidang = $koneksi->query("SELECT * FROM bidang");
      $bidang_data = [];
      while ($row = $query_bidang->fetch_assoc()) {
        $bidang_data[] = $row; // Simpan data bidang ke array
      }
      ?>

      <!-- Navigasi untuk memilih layanan -->
      <div class="service-navigation border-top">
        <?php foreach ($bidang_data as $index => $bidang) : ?>
          <button class="service-btn <?= $index === 0 ? 'active' : '' ?>" data-target="bidang-<?= $bidang['id']; ?>">
            <?= htmlspecialchars($bidang['nama_bidang']); ?>
          </button>
        <?php endforeach; ?>
      </div>
    </div>

    <?php foreach ($bidang_data as $index => $bidang) : ?>
      <!-- Seksi untuk setiap bidang -->
      <div id="bidang-<?= $bidang['id']; ?>" class="service-section" style="display: <?= $index === 0 ? 'block' : 'none'; ?>;">

        <div class="row layanan_item">
          <div class="col-md-5 img_layanan">
            <img src="img/<?= htmlspecialchars($bidang['gambar'] ?? 'default.png'); ?>" alt="<?= htmlspecialchars($bidang['nama_bidang']); ?>" class="menu-card-img">
          </div>

          <div class="col-md-7  detail_layanan ">
            <div class="library-title border">
              <h5 class=""><?= htmlspecialchars($bidang['nama_bidang']); ?></h5>
            </div>
            <div class="layanan_info border">
              <div class="library-main">
                <p><i class="fas fa-building"></i><span>Lantai : </span><?= htmlspecialchars($bidang['lantai']); ?></p>

                <p><span>Jam Operasional : </span></p>
                <ul style="list-style-type: none; padding-left: 0;">
                  <?php
                  // Ubah teks jam operasional menjadi daftar
                  $jamOperasional = explode("\n", $bidang['jam_operasional']); // Pecah teks berdasarkan baris baru
                  foreach ($jamOperasional as $jam) :
                    if (trim($jam)) : // Hanya tampilkan jika tidak kosong
                  ?>
                      <li class=""><i class="far fa-clock"></i> <?= htmlspecialchars($jam); ?></li>
                  <?php
                    endif;
                  endforeach;
                  ?>
                </ul>
                <p><span>Jam Tambahan : </span></p>
                <ul style="list-style-type: none; padding-left: 0;">
                  <li><i class="far fa-clock"> </i><?= !empty($bidang['jam_tambahan']) ? htmlspecialchars($bidang['jam_tambahan']) : '<em>Tidak ada data</em>'; ?></li>
                </ul>
                <p> Pegawai Bertugas Hari Ini:</p>
                <ul style="list-style-type: none; padding-left: 0;">
                  <?php
                  $hari_map = [
                    'monday' => 'senin',
                    'tuesday' => 'selasa',
                    'wednesday' => 'rabu',
                    'thursday' => 'kamis',
                    'friday' => 'jumat',
                    'saturday' => 'sabtu',
                    'sunday' => 'minggu',
                  ];
                  $hari_inggris = strtolower(date('l')); // Hari dalam bahasa Inggris
                  $hari_ini = $hari_map[$hari_inggris]; // Ubah ke bahasa Indonesia
                  $nama_bidang = $bidang['nama_bidang'];

                  $query_pegawai = $koneksi->query("
                    SELECT p.nama_pegawai, p.kontak 
                    FROM pegawai AS p
                    JOIN jadwal_pegawai AS j ON p.id = j.id_pegawai 
                    JOIN bidang AS b ON p.id_bidang = b.id
                    WHERE LOWER(j.hari) = '$hari_ini' AND b.nama_bidang = '$nama_bidang'
                ");
                  // Memeriksa apakah query berhasil
                  if (!$query_pegawai) {
                    die('Query gagal: ' . $koneksi->error);
                  }
                  while ($pegawai = $query_pegawai->fetch_assoc()) :
                  ?>
                    <li class=""><i class="fas fa-user"></i> <?= htmlspecialchars($pegawai['nama_pegawai']); ?> - <?= htmlspecialchars($pegawai['kontak']); ?></li>
                  <?php endwhile; ?>
                </ul>
              </div>
              <div class="closed-info">
                <p>Tutup: <?= htmlspecialchars($bidang['tutup']); ?></p>
              </div>
            </div>
          </div>
        </div>
        <!-- Footer layanan -->
        <div class="library-foter border-top ">
          <button class=""><a href="<?= strtolower($bidang['nama_bidang']); ?>/layanan.html" class="">Lihat Selengkapnya</a></button>
        </div>
      </div>
    <?php endforeach; ?>
  </div>
</section>
<script>
  document.querySelectorAll('.service-btn').forEach(function(button) {
    button.addEventListener('click', function() {
      // Hapus aktif dari semua tombol
      document.querySelectorAll('.service-btn').forEach(function(btn) {
        btn.classList.remove('active');
      });

      // Aktifkan tombol yang dipilih
      button.classList.add('active');

      // Sembunyikan semua service-section dengan animasi keluar
      document.querySelectorAll('.service-section').forEach(function(section) {
        if (section.style.display === 'block') {
          section.classList.remove('fade-in'); // Hapus animasi masuk
          section.classList.add('fade-out'); // Tambahkan animasi keluar

          // Tunggu animasi selesai sebelum menyembunyikan
          setTimeout(() => {
            section.style.display = 'none';
            section.classList.remove('fade-out'); // Hapus animasi keluar
          }, 300); // Durasi sesuai animasi di CSS
        }
      });

      // Tampilkan service-section yang sesuai dengan animasi masuk
      const targetId = button.getAttribute('data-target');
      const targetSection = document.getElementById(targetId);

      if (targetSection) {
        setTimeout(() => {
          targetSection.style.display = 'block';
          targetSection.classList.add('fade-in'); // Tambahkan animasi masuk
        }, 300); // Tunggu animasi keluar selesai
      }
    });
  });
</script>