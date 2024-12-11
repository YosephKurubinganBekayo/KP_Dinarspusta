<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
  <div class="spinner-border text-warning" style="width: 3rem; height: 3rem" role="status">
    <span class="sr-only">Loading...</span>
  </div>
</div>
<!-- Spinner End -->

<!-- Topbar Start -->
<div class="container-fluid topbar bg-light px-5 d-none d-lg-block">
  <div class="row gx-0 align-items-center">
    <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
      <div class="d-flex flex-wrap">
        <a href="<?php echo $profile['alamat'] ?>" class="text-muted small me-4"><i class="fas fa-map-marker-alt text-warning me-2"></i>Temukan Lokasi</a>
        <a href="tel:<?php echo $profile['telepon'] ?>" class="text-muted small me-4"><i class="fas fa-phone-alt text-warning me-2"></i><?php echo $profile['telepon'] ?></a>
        <a href="mailto:<?php echo $profile['email'] ?>" class="text-muted small me-0"><i class="fas fa-envelope text-warning me-2"></i><?php echo $profile['email'] ?></a>
      </div>
    </div>
    <div class="col-lg-4 text-center text-lg-end">
      <div class="d-inline-flex align-items-center" style="height: 45px">
        <div class="dropdown">
          <a href="#" class="dropdown-toggle text-dark" data-bs-toggle="dropdown"><small><i class="fa fa-home text-warning me-2"></i>home
              Dashboard</small></a>
          <div class="dropdown-menu rounded">
            <a href="index.php" class="dropdown-item"><i class="fas fa-home me-2"></i>Beranda</a>
            <a href="index.php#about" class="dropdown-item"><i class="fas fa-info-circle me-2"></i>Tentang Kami</a>
            <a href="index.php#service" class="dropdown-item"><i class="fas fa-concierge-bell me-2"></i>Layanan</a>
            <a href="index.php#service_info" class="dropdown-item"><i class="fas fa-info me-2"></i>Informasi Pelayanan</a>
            <a href="index.php#blog_articel" class="dropdown-item"><i class="fas fa-blog me-2"></i>Blog & Artikel</a>
            <a href="index.php#contact" class="dropdown-item"><i class="fas fa-phone-alt me-2"></i>Kontak</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>