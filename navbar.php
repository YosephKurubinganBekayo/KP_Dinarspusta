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