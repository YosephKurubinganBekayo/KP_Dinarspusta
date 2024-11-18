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
          <li class="nav-item mx-2">
            <a class="nav-link active" aria-current="page" href="../#">Beranda</a>
          </li>
          <li class="nav-item dropdown mx-2">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuAbout" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Tentang kami
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuAbout">
              <li><a class="dropdown-item" href="profil.php">Profil </a></li>
              <li><a class="dropdown-item" href="sejarah.php">Sejarah </a></li>
              <li><a class="dropdown-item" href="#">Struktur Organisasi </a></li>
            </ul>
          </li>
          <li class="nav-item dropdown mx-2">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuPerpustakaan" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Perpustakaan
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuPerpustakaan">
              <li><a class="dropdown-item" href="#">Profil Perpustakaan</a></li>
              <li><a class="dropdown-item" href="#">Layanan Perpustakaan</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown mx-2">
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
      <h2>MENGENAL DINAS KEARSIPAN DAN PERPUSTAKAAN KOTA KUPANG</h2>
      <h4>Sejarah ARASPUS KUPANG</h4>
    </div>
  </div>

  <div class="container ">
    <div class="timeline">
      <!-- Item Tahun 2022 -->
      <div class="timeline-item">
        <div class="timeline-content">
          <h3>Tahun 2022</h3>
          <p>Melalui Peraturan Gubernur Nomor 57 tahun 2022 tentang Organisasi dan Tata Kerja Perangkat Daerah telah dilakukan penyesuaian struktur organisasi Dinas Perpustakaan dan Kearsipan pada era Anies Rasyid Baswedan pada tanggal 14 Oktober 2022.</p>
        </div>
        <div class="timeline-icon">
          <span>&#x1F551;</span>
        </div>
      </div>

      <!-- Item Tahun 2018 -->
      <div class="timeline-item">
        <div class="timeline-content">
          <h3>Tahun 2018</h3>
          <p>Dengan penetapan Peraturan Gubernur Nomor 10 tahun 2018 tentang Organisasi dan Tata Kerja Dinas Perpustakaan dan Kearsipan, telah dilakukan penyesuaian pelaksanaan tugas dan fungsi organisasi dengan berlakunya Peraturan Daerah Nomor 2 tahun 2017 tentang Penyelenggaraan Perpustakaan.</p>
        </div>
        <div class="timeline-icon">
          <span>&#x1F551;</span>
        </div>
      </div>

      <!-- Item Tahun 2016 -->
      <div class="timeline-item">
        <div class="timeline-content">
          <h3>Tahun 2016</h3>
          <p>Melalui Peraturan Daerah Nomor 5 tahun 2016, tentang Pembentukan dan Susunan Perangkat Daerah Provinsi DKI Jakarta, dengan penetapan Peraturan Gubernur.</p>
        </div>
        <div class="timeline-icon">
          <span>&#x1F551;</span>
        </div>
      </div>
    </div>
  </div>

  <script src="../bootstrap5/js/bootstrap.bundle.min.js"></script>
  <script src="../js/script.js"></script>
</body>

</html>