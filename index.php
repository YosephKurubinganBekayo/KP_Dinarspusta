<?php include "admin/inc/koneksi.php";
include "fungsi.php";
$link = mysqli_connect('localhost', 'root', '', 'db_companyprofile');

$mysqli = new databases();
?>
<?php
// Pastikan ini ada di bagian atas file PHP
setcookie(
  "my_cookie",
  "cookie_value",
  [
    "expires" => time() + 3600, // Berlaku 1 jam
    "path" => "/",
    "domain" => "example.com",
    "secure" => true, // Hanya untuk HTTPS
    "httponly" => true,
    "samesite" => "None" // Bisa diganti "Lax" atau "Strict"
  ]
);
?>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="bootstrap5/css/bootstrap.min.css" rel="stylesheet">
  <!-- mystyle -->
  <link href="css/Style.css" rel="stylesheet">
  <link href="css/responsive.css" rel="stylesheet">

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,300;0,400;0,700;1,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  <title>Dinarpusta Kota Kupang</title>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-transparent position-fixed w-100">
    <div class="container">
      <?php
      $profile = $mysqli->get_show_profile(); // Panggil fungsi untuk mendapatkan data
      if ($profile) { ?>
        <a class="navbar-brand" href="#">
          <img src="img/buku.jpg" alt="" width="30" height="24" class="d-inline-block align-text-top">
          <?php echo $profile['titlewebsite'] ?></a>
      <?php } else {
        echo "<p>Nama Brand</p>";
      } ?>


      <button class="navbar-toggler border-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item ">
            <a class="nav-link " aria-current="page" href="#">Beranda</a>
          </li>
          <li class="nav-item dropdown ">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuAbout" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Tentang kami
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuAbout">
              <li><a class="dropdown-item" href="tentangkami/profil.php">Profil </a></li>
              <li><a class="dropdown-item" href="tentangkami/sejarah.php">Sejarah </a></li>
              <li><a class="dropdown-item" href="tentangkami/struktur.php">Struktur Organisasi </a></li>
              <li><a class="dropdown-item" href="#kegiatan">Kegiatan </a></li>
            </ul>
          </li>
          <li class="nav-item dropdown ">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuPerpustakaan" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Perpustakaan
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuPerpustakaan">
              <li><a class="dropdown-item" href="perpustakaan/profil.php">Profil Perpustakaan</a></li>
              <li><a class="dropdown-item" href="perpustakaan/layanan.php">Layanan Perpustakaan</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown ">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuKearsipan" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Kearsipan
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuKearsipan">
              <li><a class="dropdown-item" href="kearsipan/profil.html">Profil Kearsipan</a></li>
              <li><a class="dropdown-item" href="kearsipan/layanan.html">Layanan Kearsipan</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#contact">Kontak</a>
          </li>
        </ul>
        <div class="navbar-nav login-button ">
          <button class="button_secondary"><a href="admin/index.php">Masuk</a></button>
        </div>
      </div>
    </div>
  </nav>
  <!-- hero section -->
  <?php $profile = $mysqli->get_show_profile(); // Panggil fungsi untuk mendapatkan data
  ?>
  <style>
    .hero {
      height: 100vh;
      width: 100%;
      background-image: url("img/<?php echo $profile['gambar']; ?>");
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
      position: relative;

    }
  </style>
  <section class="hero" id="hero">

    <div class="container h-100">
      <div class="row h-100">
        <div class="col-md-6 hero_tagline my-auto">
          <!-- <h1>Dinas <span>Kearsipan</span> dan <span>Perpustakaan</span> Kota Kupang</h1> -->
          <!-- Menampilkan data dari database -->
          <?php
          $profile = $mysqli->get_show_profile(); // Panggil fungsi untuk mendapatkan data

          if ($profile) {
            echo "
                  <h3>{$profile['welcomeparagraf']}</h3>
                  <h1>{$profile['titleparagraf']}</h1>
                  <p>{$profile['description']}</p>";
          } else {
            echo "<p>Data tidak ditemukan!</p>";
          }

          ?>
          <a href="#tentang_kami" class="button-lg-primary_titel">
            <button class="button-lg-primary">Tentang Kami</button>
          </a>
        </div>
      </div>
    </div>
  </section>
  <!-- section about -->

  <section id="tentang_kami">
    <div class="container-fluid">
      <div class="container">
        <div class="header-about">
          <h2 class=""><span>Tentang</span> Kami</h2>
        </div>

        <div class="row">
          <?php
          // Query untuk mendapatkan data gambar pertama
          $sql_gambar = $koneksi->query("SELECT * FROM tbl_aboutus LIMIT 1");
          $data_gambar = $sql_gambar->fetch_assoc();
          ?>
          <div class="col-md-5 img_about">
            <img src="img/<?php echo $data_gambar['pict_aboutus']; ?>" alt="Tentang Kami" class="menu-card-img">
          </div>
          <div class="col-md-7 about_info">
            <?php
            $sql = $koneksi->query("SELECT * FROM tbl_aboutus");
            while ($data = $sql->fetch_assoc()) {
            ?>
              <div class="about_item">
                <?php echo substr($data['detail_aboutus'], 0, 700); ?>...
              </div>
              <div class="footer_about">
                <a class="btn btn-warning" href="#layanan">Baca Selengkapnya</a>
              </div>
            <?php } ?>
          </div>

        </div>
      </div>
    </div>
  </section>
  <!-- layanan Section start -->
  <section id="layanan">
    <div class="container">
      <div class="header-layanan">
        <?php // Query bidang untuk mendapatkan semua data bidang
        $query_bidang = $koneksi->query("SELECT * FROM bidang");
        $bidang_data = [];
        while ($row = $query_bidang->fetch_assoc()) {
          $bidang_data[] = $row; // Simpan data bidang ke array
          $bidang_data_nama[] = $row['nama_bidang'];
        }
        // Membentuk kalimat layanan dari nama bidang
        if (count($bidang_data_nama) > 1) {
          $layanan_list = implode(', ', array_slice($bidang_data_nama, 0, -1)) . ' dan ' . end($bidang_data_nama);
        } else {
          $layanan_list = $bidang_data_nama[0] ?? '';
        } ?>
        <h2><span>Layanan</span> Kami</h2>
        <p class="px-50">
          <?php echo $profile['titlewebsite']; ?> menyediakan layanan <?php echo $layanan_list; ?> yang terkelola dengan baik untuk mendukung kebutuhan informasi dan literasi Anda. Klik tombol di bawah ini untuk informasi layanan lebih lanjut.
        </p> <!-- Navigasi untuk memilih layanan -->
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
          <div class="library-foter ">
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
  </script> <!-- kegiatan dan berita -->
  <?php
  // Koneksi ke database

  // Periksa koneksi
  if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
  }
  // Query untuk mengambil data kegiatan
  $sql = "SELECT * FROM kegiatan ORDER BY tanggal DESC";
  $result = $koneksi->query($sql);
  ?>

  <section class="portal-berita" id="kegiatan">
    <div class="container-fluid">
      <div class="container">
        <h2 class="text-center">Kegiatan</h2>
        <div class="row">
          <!-- Carousel untuk perangkat mobile -->
          <div id="carouselKegiatanMobile" class="carousel slide d-lg-none" data-bs-ride="carousel">
            <!-- Indikator -->
            <div class="carousel-indicators">
              <?php for ($i = 0; $i < $result->num_rows; $i++) : ?>
                <button type="button" data-bs-target="#carouselKegiatanMobile" data-bs-slide-to="<?= $i ?>" class="<?= $i === 0 ? 'active' : '' ?>" aria-current="<?= $i === 0 ? 'true' : '' ?>" aria-label="Slide <?= $i + 1 ?>"></button>
              <?php endfor; ?>
            </div>

            <div class="carousel-inner">
              <?php
              $counter = 0;
              if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                  $active = ($counter === 0) ? 'active' : '';
              ?>
                  <div class="carousel-item <?= $active ?>">
                    <div class="card card_kegiatan h-100">
                      <div class="card_image">
                        <img src="<?= $row['gambar'] ?>" alt="Gambar Berita" class="card-img-top img-berita">
                      </div>
                      <div class="card-body ">
                        <div class="info-header text-muted border-bottom mb-3">
                          <p class="text-muted"><i class="fas fa-calendar-alt"></i> <?= date("d F Y", strtotime($row['tanggal'])) ?></p>
                          <!-- <p class="text-muted"><i class="fas fa-user"></i> <?= $row['penulis'] ?></p> -->
                        </div>
                        <h5 class="card-title text-start"><?= substr($row['judul'], 0, 50) . '...' ?></h5>
                        <p class="card-text text-justify"><?= substr($row['deskripsi'], 0, 80) . '...' ?></p>
                      </div>
                      <div class="library-foter border-top">
                        <button><a href="kegiatan/detail_kegiatan.php?id=<?= $row['id'] ?>">lihat detail</a></button>
                      </div>
                    </div>
                  </div>
              <?php
                  $counter++;
                }
              } else {
                echo "<p>Data tidak ditemukan.</p>";
              }
              ?>
            </div>

            <!-- Tombol Navigasi -->
            <div class="carousel-controls d-flex justify-content-center mt-3">
              <button class="carousel-control-prev" type="button" data-bs-target="#carouselKegiatanMobile" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#carouselKegiatanMobile" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
          </div>

          <!-- Carousel untuk perangkat desktop -->
          <div id="carouselKegiatanDesktop" class="carousel slide d-none d-lg-block" data-bs-ride="carousel">
            <!-- Indikator -->
            <div class="carousel-indicators">
              <?php for ($i = 0; $i < ceil($result->num_rows / 3); $i++) : ?>
                <button type="button" data-bs-target="#carouselKegiatanDesktop" data-bs-slide-to="<?= $i ?>" class="<?= $i === 0 ? 'active' : '' ?>" aria-current="<?= $i === 0 ? 'true' : '' ?>" aria-label="Slide <?= $i + 1 ?>"></button>
              <?php endfor; ?>
            </div>

            <div class="carousel-inner">
              <?php
              $counter = 0;
              $result->data_seek(0);
              if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                  if ($counter % 3 === 0) {
                    if ($counter > 0) echo '</div></div>'; // Tutup slide sebelumnya
                    $active = ($counter === 0) ? 'active' : '';
                    echo '<div class="carousel-item ' . $active . '"><div class="row">';
                  }
              ?>
                  <div class="col-md-4">
                    <div class="card card_kegiatan h-100">
                      <div class="card_image">
                        <img src="<?= $row['gambar'] ?>" alt="Gambar Berita" class="card-img-top img-berita">
                      </div>
                      <div class="card-body">
                        <div class="info-header text-muted border-bottom mb-3">
                          <p class="text-muted"><i class="fas fa-calendar-alt"></i> <?= date("l, d F Y", strtotime($row['tanggal'])) ?></p>
                          <!-- <p class="text-muted"><i class="fas fa-user"></i> <?= $row['penulis'] ?></p> -->
                        </div>
                        <h5 class="card-title"><?= substr($row['judul'], 0, 80) . '...' ?></h5>
                        <p class="card-text"><?= substr($row['deskripsi'], 0, 100) . '...' ?></p>
                      </div>
                      <div class="library-foter border-top">
                        <button><a href="kegiatan/detail_kegiatan.php?id=<?= $row['id'] ?>">lihat detail</a></button>
                      </div>
                    </div>
                  </div>
              <?php
                  $counter++;
                }
                echo '</div></div>'; // Tutup slide terakhir
              } else {
                echo "<p>Data tidak ditemukan.</p>";
              }
              ?>
            </div>

            <!-- Tombol Navigasi -->
            <div class="carousel-controls d-flex justify-content-center mt-3">
              <button class="carousel-control-prev" type="button" data-bs-target="#carouselKegiatanDesktop" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#carouselKegiatanDesktop" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
          </div>
        </div>
      </div>
      <div class="fotter-section">
        <button class="button_semua_berita"><a href="kegiatan/kegiatan.html" class="">Semua Kegiatan</a></button>
      </div>
    </div>
  </section>
  <!-- kontak -->
  <!-- kontak Section -->
  <section id="contact">
    <div class="container-fluid overlay h-100">
      <div class="container">
        <h2 class="text-center"><span>Kontak</span> Kami</h2>
        <div class="row kontak_item">
          <div class="col-md-5 kontak_info">
            <div class="kontak_item_header border-bottom">
              <h4>Hubungi Kami</h4>
              <p>Butuh Bantuan..? Silahkan Hubungi kami untuk informasi lebih lanjut</p>
            </div>
            <h5>Alamat</h5>
            <div class="kontak">
              <div class="kontak_detail">
                <i class="fas fa-map-marker-alt"></i>
                <a href="https://www.google.com/maps?q=Jl.+R.+W.+Monginsidi+No.3,+Pasir+Panjang,+Kec.+Kota+Lama,+Kota+Kupang,+Nusa+Tenggara+Tim." target="_blank">Jl. R. W. Monginsidi No.3, Pasir Panjang, Kec. Kota Lama, Kota Kupang, Nusa Tenggara Tim.
                </a>
              </div>
            </div>
            <h5>whatsapp</h5>
            <div class="kontak">
              <div class="kontak_detail">
                <i class="fab fa-whatsapp"></i>
                <a href="https://wa.me/6281237788789" target="_blank">+621237788789</a>
              </div>
              <div class="kontak_detail">
                <i class="fab fa-whatsapp"></i>
                <a href="https://wa.me/6281237788789" target="_blank">+621237788789</a>
              </div>
            </div>
            <h5>Telepon</h5>
            <div class="kontak">
              <div class="kontak_detail">
                <i class="fas fa-phone"></i>
                <a href="https://wa.me/6281237788789" target="_blank">+621237788789</a>
              </div>
              <div class="kontak_detail">
                <i class="fas fa-phone"></i>
                <a href="https://wa.me/6281237788789" target="_blank">+621237788789</a>
              </div>

            </div>
            <h5>Email</h5>
            <div class="kontak">
              <div class="kontak_detail">
                <i class="fas fa-envelope"></i>
                <a href="mailto:arspuskpg@gmail.com">arspuskpg@gmail.com </a>
              </div>
              <div class="kontak_detail">
                <i class="fas fa-envelope"></i>
                <a href="mailto:arspuskpg@gmail.com">arspuskpg@gmail.com </a>
              </div>
            </div>
            <div class="medsos mt-4 ">
              <h5>Media Sosial</h5>
            </div>
            <div class="medsos mb-4 ">
              <a href="https://www.facebook.com/profile.php?id=100069371252712" target="_blank"><i class="fab fa-facebook-f me-4 "></i></a>
              <a href="https://instagram.com" target="_blank"><i class="fab fa-instagram me-4 "></i></a>
              <a href="https://twitter.com" target="_blank"><i class="fab fa-twitter me-4 "></i></a>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card-contact ">
              <form action="">
                <h4>Ada Pertanyaan..?</h4>
                <div class="form-floating mb-3">
                  <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                  <label for="floatingInput">Email </label>
                </div>
                <div class="form-floating mb-3">
                  <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                  <label for="floatingInput">No HP </label>
                </div>
                <div class="form-floating">
                  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                  <label for="floatingTextarea2">Pesan</label>
                </div>
                <button type="submit" class="button_contact">Kirim Pesan</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section id="gmap">
    <div class="row g_map">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3927.342761635182!2d123.60214357300359!3d-10.152768587323042!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2c569de836b48afd%3A0x14faa4d8e96d8525!2sDinas%20Kearsipan%20Dan%20Perpustakaan%20Kota%20Kupang!5e0!3m2!1sid!2sid!4v1726416102762!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
  </section>
  <!-- footer -->
  <footer>
    <div class="container-fluid">
      <div class="container">
        <div class="row footer">
          <div class="col-md-4 ">
            <div class="logo">
              <a href="#" class="scroll-top"> <img src="img/buku.jpg" alt=""> | <?php echo "$profile[titlewebsite]"; ?></a>
            </div>
          </div>
          <div class="col-md-8 my-auto">
            <div class="copyrigt ">
              <a>Copyright &copy; <?php echo date("Y"); ?> | Created by : <span>Kerja Praktek Ilmu Komputer UNDANA</span></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer> <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="bootstrap5/js/bootstrap.bundle.min.js"></script>
  <!-- my script.js -->
  <script src="js/script.js"></script>

  <!-- Option 2: Separate Popper and Bootstrap JS -->
  <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>