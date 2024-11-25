<!DOCTYPE html>
<html lang="id">
<?php
include "head.php";
?>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-transparent position-fixed w-100">
    <div class="container">
      <a class="navbar-brand" href="#">
        <!-- <img src="/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="30" height="24" class="d-inline-block align-text-top"> -->
        Araspus Kupang</a>

      <button class="navbar-toggler border-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="../#">Beranda</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuAbout" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Tentang kami
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuAbout">
              <li><a class="dropdown-item" href="../tentangkami/profil.php">Profil </a></li>
              <li><a class="dropdown-item" href="../tentangkami/sejarah.php">Sejarah </a></li>
              <li><a class="dropdown-item" href="../tentangkami/struktur.php">Struktur Organisasi </a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuPerpustakaan" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Perpustakaan
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuPerpustakaan">
              <li><a class="dropdown-item" href="profil.php">Profil Perpustakaan</a></li>
              <li><a class="dropdown-item" href="#">Layanan Perpustakaan</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuKearsipan" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Kearsipan
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuKearsipan">
              <li><a class="dropdown-item" href="#">Profil Kearsipan</a></li>
              <li><a class="dropdown-item" href="#">Layanan Kearsipan</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#contact">Kontak</a>
          </li>
        </ul>
        <div class="navbar-nav">
          <!-- <button class="button_primary">Daftar</button> -->
          <button class="button_secondary">Masuk</button>
        </div>
      </div>
    </div>
  </nav>

  <div class="header container-fluid">
    <div class="container overlay">
      <h2>MENGENAL ARASPUS</h2>
      <h4>Profil ARASPUS KUPANG</h4>
    </div>
  </div>

  <div class="container content">
    <?php
    $services = [
      [
        "title" => "Layanan Stationary",
        "description" => "Menyediakan berbagai alat tulis seperti buku, pulpen, dan kebutuhan stationary lainnya untuk mendukung aktivitas belajar.",
        "image" => "../img/book.jpg" // Ganti dengan path gambar layanan stationary
      ],
      [
        "title" => "Layanan Aktivitas Literasi",
        "description" => "Mengadakan aktivitas literasi seperti membaca bersama, bercerita, dan pelatihan literasi digital untuk anak-anak dan dewasa.",
        "image" => "literacy.png" // Ganti dengan path gambar aktivitas literasi
      ],
      [
        "title" => "Layanan Perpustakaan Keliling",
        "description" => "Perpustakaan keliling yang membawa buku langsung ke komunitas untuk mempermudah akses literasi.",
        "image" => "mobile_library.png" // Ganti dengan path gambar perpustakaan keliling
      ]
    ];

    foreach ($services as $service) {
      echo "
            <div class='service'>
            <div class='service-text'>
            <h2>{$service['title']}</h2>
            <p>{$service['description']}</p>
            </div>
            <img src='{$service['image']}' alt='{$service['title']}'>
            </div>";
    }
    ?>
  </div>
  <!--<div class="misi">
        <h3>Misi</h3>
        <ul>
            <li>Menjadikan Jakarta kota yang aman, sehat, cerdas, berbudaya, dengan memperkuat nilai-nilai keluarga dan memberikan ruang kreativitas melalui kepemimpinan yang melibatkan, menggerakkan dan memanusiakan.</li>
            <li>Menjadikan Jakarta kota yang memajukan kesejahteraan umum melalui terciptanya lapangan kerja, kestabilan dan keterjangkauan kebutuhan pokok.</li>
           
        </ul>
    </div> -->
  </div>

  <!-- kontak Section -->

  <script src="../bootstrap5/js/bootstrap.bundle.min.js"></script>
  <script src="../js/script.js"></script>

</body>

</html>