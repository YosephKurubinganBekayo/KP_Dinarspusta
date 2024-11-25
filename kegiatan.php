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