<?php
$current_page = basename($_SERVER['PHP_SELF']); // Mendapatkan nama file saat ini
?>

<nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
  <div class="container">
    <a href="" class="navbar-brand py-2 d-flex align-items-center">
      <?php if ($profile) { ?>
        <img src="img/profil/<?php echo htmlspecialchars($profile['logo'])?>" alt="" class="me-2">
        <h2 class="text-white m-0"><?php echo $profile['titlewebsite']; ?></h2>
      <?php } else { ?>
        <p class="m-0">Nama website</p>
      <?php } ?>
    </a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
      <span class="fa fa-bars"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <div class="navbar-nav ms-auto py-0">
        <a href="index.php" class="nav-item nav-link <?php echo ($current_page == 'index.php') ? 'active' : ''; ?>">Beranda</a>
        <div class="nav-item dropdown">
          <a href="#about" class="nav-link <?php echo ($current_page == 'about.php') ? 'active' : ''; ?>" data-bs-toggle="dropdown">
            <span class="dropdown-toggle">Tentang kami</span>
          </a>
          <div class="dropdown-menu m-0">
            <?php if (!empty($abouts)) {
              foreach ($abouts as $about) { ?>
                <a href="about.php?id=<?php echo urlencode($about['id_aboutus']); ?>" class="dropdown-item">
                  <?php echo htmlspecialchars($about['title_aboutus']); ?>
                </a>
            <?php }
            } else {
              echo "<p>Tidak ada layanan</p>";
            } ?>
          </div>
        </div>
        <a href="service.php" class="nav-item nav-link <?php echo ($current_page == 'service.php') ? 'active' : ''; ?>">Layanan</a>
        <a href="articel_blog.php" class="nav-item nav-link <?php echo ($current_page == 'articel_blog.php') ? 'active' : ''; ?>">Blog & Artikel</a>
        <a href="contact.php" class="nav-item nav-link <?php echo ($current_page == 'contact.php') ? 'active' : ''; ?>">Kontak</a>
      </div>
      <a href="admin/index.php" class="btn btn-light rounded-start rounded-bottom py-2 px-4 my-3 my-lg-0 flex-shrink-0">Masuk</a>
    </div>
  </div>
</nav>