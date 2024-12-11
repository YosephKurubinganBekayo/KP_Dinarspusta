<!-- Footer Start -->
<div class="container-fluid footer py-5 wow fadeIn" data-wow-delay="0.2s">
    <div class="container py-2 ">
        <div class="row g-5">
            <div class="col-md-6 col-lg-6 col-xl-5">
                <div class="footer-item ">
                    <!-- <h4 class="text-white mb-4"><?php echo $profile['titlewebsite']; ?></h4> -->
                    <a href="index.php" class="p-0 d-flex align-items-center mb-2">
                        <img src="img/aset/<?php echo htmlspecialchars($profile['logo']); ?>" alt="Logo" style="height: 150px; margin-right: 15px;">
                        <h2 class="text-white mb-0"><?php echo $profile['titleparagraf']; ?></h2>
                    </a>
                    <p><?php echo $profile['description']; ?></p>
                </div>
            </div>

            <div class="col-md-6 col-lg-6 col-xl-4 align-items-center">
                <div class="footer-item">
                    <h4 class="text-white mb-4">Info Kontak</h4>
                    <div class="d-flex align-items-center mb-3">
                        <i class="fas fa-map-marker-alt text-body me-3"></i>
                        <p class="text-body mb-0 text-break">
                            <?php echo $profile['alamat'] ?>
                        </p>
                    </div>
                    <div class="d-flex align-items-center mb-3">
                        <i class="fas fa-envelope text-body me-3"></i>
                        <p class="text-body mb-0 text-break">
                            <?php echo $profile['email'] ?>
                        </p>
                    </div>
                    <div class="d-flex align-items-center mb-3">
                        <i class="fa fa-phone-alt text-body me-3"></i>
                        <p class="text-body mb-0 text-break">
                            <?php echo $profile['telepon'] ?>
                        </p>
                    </div>

                    <div class="d-flex">
                        <a class="btn btn-warning btn-sm-square rounded-circle me-3" href="<?php echo $profile['facebook'] ?>"><i class="fab fa-facebook-f text-white"></i></a>
                        <a class="btn btn-warning btn-sm-square rounded-circle me-3" href="<?php echo $profile['x'] ?>"><i class="fab fa-twitter text-white"></i></a>
                        <a class="btn btn-warning btn-sm-square rounded-circle me-3" href="<?php echo $profile['instagram'] ?>"><i class="fab fa-instagram text-white"></i></a>
                        <a class="btn btn-warning btn-sm-square rounded-circle me-0" href="<?php echo $profile['youtube'] ?>"><i class="fab fa-youtube text-white"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-6 col-xl-2">
                <div class="footer-item">
                    <h4 class="text-body mb-4">Link Cepat</h4>
                    <a href="index.php"><i class="fas fa-angle-right me-2"></i> Beranda</a>
                    <a href="index.php#about"><i class="fas fa-angle-right me-2"></i> Tentang Kami</a>
                    <a href="index.php#service"><i class="fas fa-angle-right me-2"></i> Layanan</a>
                    <a href="index.php#service_info"><i class="fas fa-angle-right me-2"></i> Informasi Pelayanan</a>
                    <a href="index.php#blog"><i class="fas fa-angle-right me-2"></i> Blog Dan Berita</a>
                    <a href="index.php#contact"><i class="fas fa-angle-right me-2"></i> Kontak</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->
<!-- Copyright Start -->
<div class="container-fluid copyright py-4">
    <div class="container">
        <div class="row g-4 align-items-center">

            <div class="col-md-5 text-center text-md-start text-body">
                Designed By | Kerja Praktek Ilmu Komputer UNDANA
            </div>
            
            <div class="col-md-7 text-center text-md-end mb-md-0">
                <span class="text-body">Copyright<i class="fas fa-copyright text-body mx-2"></i><?php echo $profile['copyright']; ?>. All right reserved.</span>

            </div>
        </div>
    </div>
</div>