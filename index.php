<?php
require 'call_fungtion.php'
?>
<!DOCTYPE html>
<html lang="en">

<?php include "head.php" ?>


<body>
  <!-- Spinner Start -->
  <?php include "topbar.php" ?>
  <!-- Topbar End -->
  <!-- Navbar & Hero Start -->
  <div class="container-fluid position-relative p-0">
    <?php include "navbar.php" ?>

    <!-- Carousel Start -->

    <div class="header-carousel owl-carousel">
      <div class="header-carousel-item">
        <img src="img/profil/<?php echo $profile['gambar'] ?>" class="img-fluid  h-100" alt="Image" />
        <div class="carousel-caption">
          <div class="container">
            <div class="row gy-0 gx-5">
              <!-- <div class="col-lg-0 col-xl-5"></div> -->
              <div class="col-xl-7 animated fadeInLeft">
                <div class="text-sm-center text-md-start">
                  <h4 class="text-warning text-uppercase fw-bold mb-4">
                    Selamat Datang Di <?php echo $profile['titlewebsite']; ?>
                  </h4>
                  <h2 class="display-5 text-uppercase text-white mb-4">
                    <?php echo $profile['titleparagraf']; ?>
                  </h2>
                  <p class="mb-5 fs-5">
                    <?php echo $profile['description']; ?>
                  </p>
                  <div class="d-flex justify-content-center justify-content-md-start flex-shrink-0 mb-4">
                    <a class="btn btn-light rounded-start rounded-top py-3 px-4 px-md-5 me-2" href="#"><i class="fas fa-play-circle me-2"></i>Tonton Video</a>
                    <a class="btn btn-light rounded-end rounded-bottom py-3 px-4 px-md-5 ms-2" href="#about">Selengkapnya</a>
                  </div>
                  <div class="d-flex align-items-center justify-content-center justify-content-md-start">

                    <div class="d-flex justify-content-start ms-2">
                      <a class="btn btn-md-square btn-light rounded-circle me-2" href="<?php echo $profile['facebook'] ?>"><i class="fab fa-facebook-f"></i></a>
                      <a class="btn btn-md-square btn-light rounded-circle mx-2" href="<?php echo $profile['x'] ?>"><i class="fab fa-twitter"></i></a>
                      <a class="btn btn-md-square btn-light rounded-circle mx-2" href="<?php echo $profile['instagram'] ?>"><i class="fab fa-instagram"></i></a>
                      <a class="btn btn-md-square btn-light rounded-circle ms-2" href="<?php echo $profile['youtube'] ?>"><i class="fab fa-youtube"></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <?php
      if (!empty($departemens)) {
        foreach ($departemens as $departemen) {

      ?>
          <div class="header-carousel-item">
            <img src="img/<?php echo $departemen['gambar'] ?>" class="img-fluid w-100" alt="Image" />
            <div class="carousel-caption">
              <div class="container">
                <div class="row gy-0 gx-5">
                  <!-- <div class="col-lg-0 col-xl-5"></div> -->
                  <div class="col-xl-7 animated fadeInLeft">
                    <div class="text-sm-center text-md-start">
                      <h4 class="text-warning text-uppercase fw-bold mb-4">
                        Selamat Datang Di <?php echo $profile['titlewebsite']; ?>
                      </h4>
                      <h2 class="display-5 text-uppercase text-white mb-4">
                        <?php echo $profile['titleparagraf']; ?>
                      </h2>
                      <p class="mb-5 fs-5">
                        <?php echo $profile['description']; ?>
                      </p>
                      <div class="d-flex justify-content-center justify-content-md-start flex-shrink-0 mb-4">
                        <a class="btn btn-light rounded-start rounded-top py-3 px-4 px-md-5 me-2" href="#"><i class="fas fa-play-circle me-2"></i>Tonton Video</a>
                        <a class="btn btn-light rounded-end rounded-bottom py-3 px-4 px-md-5 ms-2" href="#about">Selengkapnya</a>
                      </div>
                      <div class="d-flex align-items-center justify-content-center justify-content-md-start">

                        <div class="d-flex justify-content-start ms-2">
                          <a class="btn btn-md-square btn-light rounded-circle me-2" href="<?php echo $profile['facebook'] ?>"><i class="fab fa-facebook-f"></i></a>
                          <a class="btn btn-md-square btn-light rounded-circle mx-2" href="<?php echo $profile['x'] ?>"><i class="fab fa-twitter"></i></a>
                          <a class="btn btn-md-square btn-light rounded-circle mx-2" href="<?php echo $profile['instagram'] ?>"><i class="fab fa-instagram"></i></a>
                          <a class="btn btn-md-square btn-light rounded-circle ms-2" href="<?php echo $profile['youtube'] ?>"><i class="fab fa-youtube"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
      <?php
        }
      } else {
        echo "<p>Tidak ada layanan</p>";
      }
      ?>
      <!-- <div class="header-carousel-item">
        <img src="img/carousel-2.jpg" class="img-fluid w-100" alt="Image" />
        <div class="carousel-caption">
          <div class="container">
            <div class="row g-5">
              <div class="col-12 animated fadeInUp">
                <div class="text-center">
                  <h4 class="text-warning text-uppercase fw-bold mb-4">
                    Welcome To Stocker
                  </h4>
                  <h1 class="display-4 text-uppercase text-white mb-4">
                    Invest your money with higher return
                  </h1>
                  <p class="mb-5 fs-5">
                    Lorem Ipsum is simply dummy text of the printing and
                    typesetting industry. Lorem Ipsum has been the industry's
                    standard dummy...
                  </p>
                  <div class="d-flex justify-content-center flex-shrink-0 mb-4">
                    <a class="btn btn-light rounded-pill py-3 px-4 px-md-5 me-2" href="#"><i class="fas fa-play-circle me-2"></i> Watch Video</a>
                    <a class="btn btn-warning rounded-pill py-3 px-4 px-md-5 ms-2" href="#">Learn More</a>
                  </div>
                  <div class="d-flex align-items-center justify-content-center">
                    <h2 class="text-white me-2">Follow Us:</h2>
                    <div class="d-flex justify-content-end ms-2">
                      <a class="btn btn-md-square btn-light rounded-circle me-2" href=""><i class="fab fa-facebook-f"></i></a>
                      <a class="btn btn-md-square btn-light rounded-circle mx-2" href=""><i class="fab fa-twitter"></i></a>
                      <a class="btn btn-md-square btn-light rounded-circle mx-2" href=""><i class="fab fa-instagram"></i></a>
                      <a class="btn btn-md-square btn-light rounded-circle ms-2" href=""><i class="fab fa-linkedin-in"></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div> -->
    </div>
    <!-- Carousel End -->
  </div>
  <!-- Navbar & Hero End -->

  <!-- Abvout Start -->
  <div id="about" class="container-fluid about py-5 ">
    <div class="container py-5">
      <div class="row g-5 align-items-center">
        <div class="col-xl-7 wow fadeInLeft" data-wow-delay="0.2s">
          <div>
            <h4 class="text-warning">Tentang Kami</h4>
            <?php
            $sql_gambar = $koneksi->query("SELECT * FROM tbl_aboutus LIMIT 1");
            $data_gambar = $sql_gambar->fetch_assoc();
            ?>
            <?php
            $sql = $koneksi->query("SELECT * FROM tbl_aboutus LIMIT 1");
            while ($data = $sql->fetch_assoc()) {
            ?>
              <?php echo strlen($data['detail_aboutus']) > 900 ? substr($data['detail_aboutus'], 0, 900) . "..." : $data['detail_aboutus']; ?>

            <?php }
            ?>
            <div class="row g-4">
              <div class="col-sm-6">
                <a href="about.php?id=<?php echo urlencode($data_gambar['id_aboutus']); ?>" class="btn btn-secondary rounded-end rounded-top py-2 px-5 flex-shrink-0">Selengkapnya</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-5 wow fadeInRight" data-wow-delay="0.2s">
          <div class="rounded position-relative overflow-hidden">
            <img src="img/<?php echo $data_gambar['pict_aboutus']; ?>" class="img-fluid" style="width: 100%; height: 400px; object-fit: cover; " alt="" />
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- About End -->

  <!-- Services Start -->
  <div class="container-fluid service py-5" id="service">
    <div class="container py-5">
      <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px">
        <h4 class="text-warning">Layanan Kami</h4>
        <h1 class="display-5 mb-4">Kami menyediakan layanan terbaik untuk anda</h1>
        <?php
        $query_bidang = $koneksi->query("SELECT * FROM layanan");
        $bidang_data = [];
        while ($row = $query_bidang->fetch_assoc()) {
          $bidang_data[] = $row; // Simpan data bidang ke array
          $bidang_data_nama[] = $row['nama_layanan'];
        }
        // Membentuk kalimat layanan dari nama bidang
        if (count($bidang_data_nama) > 1) {
          $layanan_list = implode(', ', array_slice($bidang_data_nama, 0, -1)) . ' dan ' . end($bidang_data_nama);
        } else {
          $layanan_list = $bidang_data_nama[0] ?? '';
        } ?>
        <p class="mb-0">
          <?php echo $profile['titlewebsite']; ?> menyediakan layanan "<?php echo $layanan_list; ?>" yang terkelola dengan baik untuk mendukung kebutuhan informasi dan literasi Anda.

        </p>
      </div>
      <div class="row g-4">
        <?php
        if (!empty($services)) {
          foreach ($services as $service) {
            $nama_layanan = $service['nama_layanan'];
            $deskripsi = $service['deskripsi'];
            $max_length = 180;

            // Hitung total panjang karakter
            $total_length = strlen($nama_layanan) + strlen($deskripsi);

            // Potong deskripsi jika total panjang melebihi batas
            if ($total_length > $max_length) {
              $deskripsi = substr($deskripsi, 0, $max_length - strlen($nama_layanan)) . '...';
            }
        ?>
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.2s">
              <div class="service-item">
                <div class="service-img">
                  <img src="img/<?php echo htmlspecialchars($service['gambar']); ?>" class="img-fluid rounded-top w-100" alt="<?php echo htmlspecialchars($service['nama_layanan']); ?>" style="height: 250px; object-fit: cover; object-position: center; width: 100%; " />
                </div>
                <div class="rounded-bottom p-4" style="height: 180px; overflow: hidden;">
                  <a href="#" class="h4 text-warning d-inline-block mb-4">
                    <?php echo  $nama_layanan ?>
                  </a>
                  <!-- <p class="mb-4"> -->
                  <?php echo  $deskripsi ?>
                  <!-- </p> -->
                </div>
                <div class="p-4">
                  <a class="btn btn-secondary rounded-start rounded-top py-2 px-4" href="service.php#layanan-<?php echo htmlspecialchars($service['id']) ?>">Baca selengkapnya</a>
                </div>
              </div>
            </div>
        <?php
          }
        } else {
          echo "<p>Tidak ada layanan</p>";
        }
        ?>
      </div>
    </div>
  </div>
  <!-- Services End -->

  <!-- Features Start -->
  <!-- <div class="container-fluid feature pb-5">
    <div class="container pb-5">
      <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px">
        <h4 class="text-warning">Our Features</h4>
        <h1 class="display-5 mb-4">
          Connecting businesses, ideas, and people for greater impact.
        </h1>
        <p class="mb-0">
          Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur
          adipisci facilis cupiditate recusandae aperiam temporibus corporis
          itaque quis facere, numquam, ad culpa deserunt sint dolorem autem
          obcaecati, ipsam mollitia hic.
        </p>
      </div>
      <div class="row g-4">
        <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.2s">
          <div class="feature-item p-4">
            <div class="feature-icon p-4 mb-4">
              <i class="fas fa-chart-line fa-4x text-warning"></i>
            </div>
            <h4>Global Management</h4>
            <p class="mb-4">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea hic
              laborum odit pariatur...
            </p>
            <a class="btn btn-warning rounded-pill py-2 px-4" href="#">Learn More</a>
          </div>
        </div>
        <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.4s">
          <div class="feature-item p-4">
            <div class="feature-icon p-4 mb-4">
              <i class="fas fa-university fa-4x text-warning"></i>
            </div>
            <h4>Corporate Banking</h4>
            <p class="mb-4">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea hic
              laborum odit pariatur...
            </p>
            <a class="btn btn-warning rounded-pill py-2 px-4" href="#">Learn More</a>
          </div>
        </div>
        <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.6s">
          <div class="feature-item p-4">
            <div class="feature-icon p-4 mb-4">
              <i class="fas fa-file-alt fa-4x text-warning"></i>
            </div>
            <h4>Asset Management</h4>
            <p class="mb-4">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea hic
              laborum odit pariatur...
            </p>
            <a class="btn btn-warning rounded-pill py-2 px-4" href="#">Learn More</a>
          </div>
        </div>
        <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.8s">
          <div class="feature-item p-4">
            <div class="feature-icon p-4 mb-4">
              <i class="fas fa-hand-holding-usd fa-4x text-warning"></i>
            </div>
            <h4>Investment Bank</h4>
            <p class="mb-4">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea hic
              laborum odit pariatur...
            </p>
            <a class="btn btn-warning rounded-pill py-2 px-4" href="#">Learn More</a>
          </div>
        </div>
      </div>
    </div>
  </div> -->
  <!-- Features End -->

  <!-- Offer Start -->
  <div class="container-fluid offer-section py-5" id="service_info">
    <div class="container py-5">
      <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px">
        <h4 class="text-warning">Informasi layanan</h4>
        <h1 class="display-5 mb-4">Informasii tentang jadwal layanan Kami</h1>
        <p class="mb-0">
          Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur
          adipisci facilis cupiditate recusandae aperiam temporibus corporis
          itaque quis facere, numquam, ad culpa deserunt sint dolorem autem
          obcaecati, ipsam mollitia hic.
        </p>
      </div>
      <div class="row g-5 align-items-center" data-wow-delay="0.2s">
        <div class="col-xl-12 mb-5  wow fadeInLeft">
          <div class="nav nav-pills bg-light rounded-end rounded-top p-2 d-flex justify-content-evenly">
            <?php
            $query_bidang = $koneksi->query("SELECT i.*, d.nama_departemen, d.gambar FROM informasi_pelayanan i JOIN departemen d ON i.id_departemen = d.id");
            $bidang_data = [];
            while ($row = $query_bidang->fetch_assoc()) {
              $bidang_data[] = $row;
            }

            $i = 0;
            foreach ($bidang_data as $row) {
              $isActive = ($i === 0) ? 'active' : ''; // Set tab pertama sebagai aktif
            ?>
              <a class="accordion-link rounded-end rounded-top <?php echo $isActive; ?>" data-bs-toggle="pill" href="#collapse-<?php echo $row['id']; ?>" style="padding: 10px 20px;">
                <h5 class="mb-0 text-light">
                  <?php echo $row['nama_departemen']; ?>
                </h5>
              </a>
            <?php
              $i++;
            }
            ?>
          </div>
        </div>
      </div>

      <div class="col-xl-12 wow fadeInRight" data-wow-delay="0.4s">
        <div class="tab-content ">
          <?php
          $i = 0;
          foreach ($bidang_data as $row) {
            $isActive = ($i === 0) ? 'show active' : '';
          ?>
            <div id="collapse-<?php echo $row['id']; ?>" class="tab-pane fade <?php echo $isActive; ?> p-0">
              <div class="row g-4">
                <div class="col-md-6">
                  <img src="img/<?php echo $row['gambar'] ?>" class="img-fluid w-100 rounded-start rounded-bottom" style="width: 100%; height: 400px; object-fit: cover; " alt="" />
                </div>
                <div class="col-md-6">
                  <h1 class="display-5 mb-4">
                    <?php echo $row['nama_departemen']; ?>
                  </h1>
                  <p><i class="fas fa-building"></i><span>Lantai : </span><?= htmlspecialchars($row['lantai']); ?></p>

                  <p><span>Jam Operasional : </span></p>
                  <ul style="list-style-type: none; padding-left: 0;">
                    <?php
                    $jamOperasional = explode("\n", $row['jam_operasional']);
                    foreach ($jamOperasional as $jam) :
                      if (trim($jam)) :
                    ?>
                        <li class=""><i class="far fa-clock"></i> <?= htmlspecialchars($jam); ?></li>
                    <?php
                      endif;
                    endforeach;
                    ?>
                  </ul>
                  <p><span>Jam Tambahan : </span></p>
                  <ul style="list-style-type: none; padding-left: 0;">
                    <li><i class="far fa-clock"> </i><?= !empty($row['jam_tambahan']) ? htmlspecialchars($row['jam_tambahan']) : '<em>Tidak ada data</em>'; ?></li>
                  </ul>
                  <p>Tutup : <?php echo $row['tutup'] ?></p>
                  <!-- <p class="mb-4">
                      Lorem ipsum dolor sit amet consectetur adipisicing elit.
                      Corporis amet sequi molestiae tenetur eum mollitia,
                      blanditiis, magnam illo magni error dolore unde
                      perspiciatis tempore et totam corrupti dignissimos aut
                      praesentium?
                    </p> -->
                  <a class="btn btn-secondary rounded-end rounded-bottom py-2 px-4" href="service.php#info_about">Baca Selengkapnya</a>
                </div>
              </div>
            </div>
          <?php
            $i++;
          }
          ?>
        </div>
      </div>
      <!-- </div> -->
    </div>
  </div>
  <!-- Offer End -->

  <!-- Blog Start -->
  <div class="container-fluid blog py-5 " id="blog_articel">
    <div class="container py-5">
      <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px">
        <h4 class="text-warning">Blog & Artikel</h4>
        <h1 class="display-5 mb-4">Tunggu Apa Lagi? Simal artikel dibawah ini...</h1>
        <p class="mb-0">
          "Di sini, kita mengungkapkan sejarah yang tersembunyi, menggali kebudayaan lokal, dan membagikan pengetahuan baru. Temukan kisah inspiratif, fakta menarik, dan informasi terkini tentang pengelolaan arsip dan perpustakaan digital. Jelajahi artikel-artikel kami dan temukan keajaiban pengetahuan yang menunggu Anda!"
        </p>
      </div>
      <div class="owl-carousel blog-carousel wow fadeInUp" data-wow-delay="0.2s">
        <?php if (!empty($blogs)) {
          foreach ($blogs as $blog) {
            $judul = $blog['judul'];
            $deskripsi = $blog['deskripsi'];
            $max_length = 130;
            // Hitung total panjang judul dan deskripsi
            $total_length = strlen($judul) + strlen($deskripsi);
            // Potong deskripsi jika total panjang melebihi batas
            if ($total_length > $max_length) {
              $deskripsi = substr($deskripsi, 0, $max_length - strlen($judul)) . '...';
            }
        ?>
            <div class="blog-item p-2">
              <div class="blog-img ">
                <img src="img/<?php echo htmlspecialchars($blog['gambar']); ?>" class="img-fluid rounded-top w-100" alt="<?php echo htmlspecialchars($service['nama_layanan']); ?>" style="height: 230px; object-fit: cover; object-position: center; width: 100%;" />

              </div>
              <div class="d-flex align-items-center border-bottom py-2 mb-3">
                <img src="img/aset/noimage.png" class="img-fluid rounded-circle" style="width: 50px; height: 50px" alt="" />
                <div class="ms-2">
                  <p class="mb-0"><?php echo htmlspecialchars($blog['penulis']); ?></p>
                  <p class="mb-0"><?php echo htmlspecialchars($blog['tanggal']); ?></p>
                </div>
              </div>
              <div class="mb-4" style="height: 150px; overflow: hidden;">
                <a href="#" class="h4 d-inline-block mb-3">
                  <?php echo ($judul); ?>
                </a>
                <?php echo $deskripsi ?>
              </div>

              <div class="text-end mt-2 border-top pt-2">
                <a href="articel_blog_detail.php?id=<?php echo $blog['id']; ?>" class="btn btn-secondary rounded-start rounded-bottom">Selengkapnya</a>
              </div>
            </div>
        <?php }
        } else {
          echo "<p>Tidak ada Blog dan berita</p>";
        } ?>
      </div>
      <div class="text-end mt-4">
        <a href="articel_blog.php" class="btn btn-secondary rounded-start rounded-top">Semua Berita</a>
      </div>
    </div>
  </div>
  <!-- Blog End -->
  <!-- Contact Start -->
  <div class="container-fluid contact py-5 " id="contact">

    <div class="container py-5">
      <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px">
        <h4 class="text-warning">Kontak</h4>
        <h1 class="display-5 mb-4">Hubungi Kami</h1>
        <p class="mb-0">
          Jika anda membutuhkan informasi atau bantuan lebih lebih lanjut, jangan ragu untuk menghubungi kami.
          Kami siap membantu dengan sepenuh hati.
        </p>
      </div>
      <div class="row kontak_item">
        <div class="col-md-6">
          <div class="bg-light rounded p-5 mb-5 h-100 wow fadeInLeft" data-wow-delay="0.2s">
            <h4 class="text-warning mb-4">Tekan untuk menghubungi</h4>
            <div class="row g-4">
              <!-- <div class="col-md-6"> -->
              <div class="contact-add-item">
                <div class="contact-icon text-warning mb-4">
                  <i class="fas fa-map-marker-alt fa-2x"></i>
                </div>
                <div>
                  <h4>Alamat</h4>
                  <p class="mb-0"> <a class="text-dark" href="https://www.google.com/maps?q=Jl.+R.+W.+Monginsidi+No.3,+Pasir+Panjang,+Kec.+Kota+Lama,+Kota+Kupang,+Nusa+Tenggara+Tim." target="_blank">Jl. R. W. Monginsidi No.3, Pasir Panjang, Kec. Kota Lama, Kota Kupang, Nusa Tenggara Tim.
                    </a> </p>
                </div>
              </div>
              <!-- </div> -->
              <!-- <div class="col-md-6"> -->
              <div class="contact-add-item">
                <div class="contact-icon text-warning mb-4">
                  <i class="fas fa-envelope fa-2x"></i>
                </div>
                <div>
                  <h4>Email</h4>
                  <p class="mb-0">
                    <a class="text-dark" href="mailto:<?php echo $profile['email'] ?>"><?php echo $profile['email'] ?></a>
                  </p>
                </div>
              </div>
              <!-- </div> -->
              <!-- <div class="col-md-6"> -->
              <div class="contact-add-item">
                <div class="contact-icon text-warning mb-4">
                  <i class="fa fa-phone-alt fa-2x"></i>
                </div>
                <div>
                  <h4>Telepon</h4>
                  <p class="mb-0">
                    <a class="text-dark" href="mailto:<?php echo $profile['telepon'] ?>"><?php echo $profile['telepon'] ?></a>
                  </p>
                  <!-- <p class="mb-0"><?php echo $profile['telepon'] ?></p> -->
                </div>
              </div>
              <!-- </div> -->
              <div class="col-md-6">
                <div class="contact-add-item">
                  <div class="contact-icon text-warning mb-4">
                    <i class="fab fa-whatsapp fa-2x"></i>
                  </div>
                  <div>
                    <h4>WhatsApp</h4>
                    <p class="mb-0">
                      <a class="text-dark" href="https://wa.me/<?php echo $profile['telepon'] ?>" target="_blank">
                        <?php echo $profile['telepon'] ?>
                      </a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="bg-light p-5 rounded h-100 wow fadeInRight" data-wow-delay="0.2s">
            <h4 class="text-warning">Kirim pesan ke kami</h4>
            <p class="mb-4">Butuh Bantuan..? Silahkan Hubungi kami untuk informasi lebih lanjut</p>
            <form method="POST">
              <div class="form-floating mb-3">
                <input type="text" name="name" class="form-control" placeholder="Nama " required>
                <label>Nama</label>
              </div>
              <div class="form-floating mb-3">
                <input type="email" name="email" class="form-control" placeholder="Email" required>
                <label>Email</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" name="no_hp" class="form-control" placeholder="No Hp" required>
                <label>No Hp</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" name="subject" class="form-control" placeholder="Subject" required>
                <label>Subject</label>
              </div>
              <div class="form-floating mb-3">
                <textarea name="message" class="form-control" placeholder="Pesan" style="height: 150px" required></textarea>
                <label>Pesan</label>
              </div>
              <button type="submit" class="btn btn-secondary w-100 py-3">Kirim Pesan</button>
            </form>
          </div>
        </div>

      </div>
      <div class="row wow fadeInUp pt-5" data-wow-delay="0.2s ">
        <?php echo $profile['gmap']
        ?>
      </div>
    </div>
  </div>
  <!-- Contact End -->
  <!-- Footer Start -->
  <?php include "footer.php" ?>
  <!-- Footer End -->



  <!-- Back to Top -->
  <a href="#" class="btn btn-primary btn-lg-square rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>
  
  <!-- JavaScript Libraries -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>

  <!-- Template Javascript -->
  <script src="js/main.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

  <?php

  ?>
  <?php
  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Ambil data dari form
    $name = $_POST['name'];
    $email = $_POST['email'];
    $no_hp = $_POST['no_hp'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];
    $date_receive = date('Y-m-d H:i:s'); // Tanggal saat ini
    $query = "INSERT INTO tbl_inbox (date_receive_inbox, name_inbox, email_inbox, subject_inbox, message_inbox)
    VALUES ('$date_receive', '$name', '$email', '$subject', '$message')";
    // Eksekusi query
    if (mysqli_query($koneksi, $query)) {
      echo "<script>
        Swal.fire({
            title: 'Kirim Pesan Berhasil',
            text: 'Terima Kasih Telah Mengirim Pesan.',
            icon: 'success',
            confirmButtonText: 'OK'
          }).then((result) => {
            if (result.isConfirmed) {
                window.location = 'index.php#contact';
            }
        });
    </script>";
      exit;
    } else {
      echo "<script>
        Swal.fire({
            title: 'Kirim Pesan Gagal ',
            text: 'Periksa Isian Pesan Anda.',
            icon: 'success',
            confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location = 'index.php#contact';
            }
        });
    </script>";
    }
  }
  ?>
</body>

</html>