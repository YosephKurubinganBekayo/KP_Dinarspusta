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
            <button class="button-lg-primary">
              Selengkapnya
            </button>
          </a>
        </div>
      </div>
    </div>
  </section>