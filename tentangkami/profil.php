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
          <li class="nav-item ">
            <a class="nav-link active" aria-current="page" href="../#">Beranda</a>
          </li>
          <li class="nav-item dropdown ">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuAbout" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Tentang kami
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuAbout">
              <li><a class="dropdown-item" href="#">Profil </a></li>
              <li><a class="dropdown-item" href="sejarah.php">Sejarah </a></li>
              <li><a class="dropdown-item" href="#">Struktur Organisasi </a></li>
            </ul>
          </li>
          <li class="nav-item dropdown ">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuPerpustakaan" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Perpustakaan
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuPerpustakaan">
              <li><a class="dropdown-item" href="../perpustakaan/profil.php">Profil Perpustakaan</a></li>
              <li><a class="dropdown-item" href="../perpustakaan/layanan.php">Layanan Perpustakaan</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown ">
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
    <div class="section-title border-bottom">
      <h5>Visi & Misi Badan Publik</h5>
    </div>

    <div class="visi">
      <h6>Visi</h6>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic fugit reiciendis, iste cupiditate quibusdam illo tempora excepturi itaque natus, magnam explicabo cumque suscipit repudiandae ipsa ab? Voluptate cum odit doloremque.Jakarta kota maju, lestari dan berbudaya yang warganya terlibat dalam mewujudkan keberadaban, keadilan dan kesejahteraan bagi semua.</p>
    </div>

    <div class="misi ">
      <h6>Misi</h6>
      <ol>
        <li>Menjadikan Jakarta kota yang aman, sehat, cerdas, berbudaya, dengan memperkuat nilai-nilai keluarga dan memberikan ruang kreativitas melalui kepemimpinan yang melibatkan, menggerakkan dan memanusiakan.</li>
        <li>Menjadikan Jakarta kota yang memajukan kesejahteraan umum melalui terciptanya lapangan kerja, kestabilan dan keterjangkauan kebutuhan pokok.</li>
        <!-- Tambahkan misi lainnya sesuai kebutuhan -->
      </ol>
    </div>
  </div>

  <div class="container content">
    <div class="section-title border-bottom"><h5>Tugas dan Fungsi</h5></div>

    <div class="Visi">
      <h6>Tugas</h6>
      <p>Jakarta kota maju, lestari dan berbudaya yang warganya terlibat dalam mewujudkan keberadaban, keadilan dan kesejahteraan bagi semua.
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio facilis architecto excepturi nesciunt corrupti? Officiis obcaecati minima nisi pariatur atque alias incidunt, vel, sit nam accusantium suscipit, veniam velit explicabo.
        lorem*20
      </p>
    </div>

    <div class="Misi">
      <h6>Fungsi</h6>
      <ol>
        <li>Menjadikan Jakarta kota yang aman, sehat, cerdas, berbudaya, dengan memperkuat nilai-nilai keluarga dan memberikan ruang kreativitas melalui kepemimpinan yang melibatkan, menggerakkan dan memanusiakan.</li>
        <li>Menjadikan Jakarta kota yang memajukan kesejahteraan umum melalui terciptanya lapangan kerja, kestabilan dan keterjangkauan kebutuhan pokok.</li>
        <!-- Tambahkan misi lainnya sesuai kebutuhan -->
      </ol>
    </div>
  </div>
  <!-- kontak Section -->

  <script src="../bootstrap5/js/bootstrap.bundle.min.js"></script>
  <script src="../js/script.js"></script>

</body>

</html>