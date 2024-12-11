<?php
require 'call_fungtion.php';
?>
<!DOCTYPE html>
<html lang="en">

<?php include "head.php" ?>

<body>

  <?php include "topbar.php" ?>
  <!-- Topbar End -->

  <!-- Navbar & Hero Start -->
  <div class="container-fluid position-relative p-0">
    <?php include "navbar.php" ?>

    <style>
      .bg-breadcrumb {
        position: relative;
        overflow: hidden;
        background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
          url(img/profil/<?php echo $profile['gambar'] ?>);
        background-position: center center;
        background-repeat: no-repeat;
        background-size: cover;
        padding: 140px 0 60px 0;
        transition: 0.5s;
      }
    </style>
    <!-- Header Start -->
    <div class="container-fluid bg-breadcrumb">
      <div class="container text-center py-5" style="max-width: 900px;">
        <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">Layanan Kami</h4>
        <ol class="breadcrumb d-flex justify-content-center mb-0 wow fadeInDown" data-wow-delay="0.3s">
          <li class="breadcrumb-item"><a href="index.php">Beranda</a></li>
          <li class="breadcrumb-item active text-primary">Layanan</li>
        </ol>
      </div>
    </div>
    <!-- Header End -->
  </div>
  <!-- Navbar & Hero End -->
  <!-- Services Start -->
  <div id="info_about" class="container-fluid about py-5 ">
    <div class="text-center mx-auto py-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px">
      <h4 class="text-warning">Informasi Pelayanan</h4>
      <h1 class="display-5 mb-4">Informasi .........</h1>
      <p class="mb-0">
        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur
        adipisci facilis cupiditate recusandae aperiam temporibus corporis
        itaque quis facere, numquam, ad culpa deserunt sint dolorem autem
        obcaecati, ipsam mollitia hic........
      </p>
    </div>
    <div class="container">
      <div class="table-responsive wow fadeInUp" data-wow-delay="0.2s">
        <table id="example1" class="table table-bordered table-striped">
          <thead>
            <tr>
              <th>No</th>
              <th>Departemen</th>
              <th>Alamat </th>
              <th>Lantai </th>
              <th>Jam Operasional</th>
              <th>Jam Tambahan</th>
              <th>Informasi Tutup</th>
            </tr>
          </thead>
          <tbody>

            <?php
            $no = 1;
            $sql = $koneksi->query("SELECT i.*, d.nama_departemen FROM informasi_pelayanan i JOIN departemen d ON i.id_departemen = d.id");
            while ($data = $sql->fetch_assoc()) {
            ?>
              <tr>
                <td>
                  <?php echo $no++; ?>
                </td>
                <td>
                  <?php echo $data['nama_departemen']; ?>
                </td>

                <td>
                  <?php echo $data['alamat']; ?>
                </td>
                <td>
                  <?php echo $data['lantai']; ?>
                </td>
                <td>
                  <?php echo $data['jam_operasional']; ?>
                </td>
                <td>
                  <?php echo $data['jam_tambahan']; ?>
                </td>
                <td>
                  <?php echo $data['tutup']; ?>
                </td>

              </tr>
            <?php
            }
            ?>
          </tbody>

        </table>

      </div>
    </div>
  </div>
  <div id="about" class="container-fluid about pt-5 ">
    <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px">
      <h4 class="text-warning">Layanan Kami</h4>
      <h1 class="display-5 mb-4">Articles For Pro Traders....?</h1>
      <p class="mb-0">
        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur
        adipisci facilis cupiditate recusandae aperiam temporibus corporis
        itaque quis facere, numquam, ad culpa deserunt sint dolorem autem
        obcaecati, ipsam mollitia hic...?
      </p>
    </div>
    <div class="container-fluid about py-5 ">
      <?php

      if (!empty($departemens)) {
        foreach ($departemens as $departemen) {
          // Panggil fungsi untuk mendapatkan layanan berdasarkan departemen
          // $departemens = $mysqli->get_show_departemens();
          $services_departement = $mysqli->get_show_services_departement($departemen['id']);
      ?>
          <div class="container">
            <?php
            if (!empty($services_departement)) { ?>
              <h3 style="margin-bottom:-75px;"><?php echo $departemen['nama_departemen']; ?></h3>
              <ol>

                <?php
                foreach ($services_departement as $service) {
                  // echo "<li>" . $service['nama_layanan'] . "</li>";
                  $nama_layanan = $service['nama_layanan'];
                  $deskripsi = $service['deskripsi'];
                ?>
                  <li id="layanan-<?php echo $service['id'] ?>" class="pt-5">
                    <div class="container border-bottom pt-5">
                      <div class="row g-5 align-items-center  ">
                        <!-- <div class="col-xl-9 wow fadeInLeft" data-wow-delay="0.2s"> -->
                        <div>
                          <h4><?php echo  $nama_layanan ?></h4>
                          <?php echo $deskripsi; ?>

                        </div>
                        <!-- </div> -->
                      </div>
                      <div class="row py-2">
                        <div class="col-xl-4 wow fadeInRight" data-wow-delay="0.2s">
                          <div class="position-relative overflow-hidden rounded">
                            <img src="img/<?php echo $service['gambar']; ?>" class="img-fluid" style="width: 100%; height: 300px; object-fit: cover; " alt="" />
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
              <?php }
              } ?>
              </ol>
          </div>
      <?php
        }
      }
      ?>
    </div>
    <div class="container py-5" id="databuku">
      <div class="text-center mx-auto wow fadeInUp pt-5" data-wow-delay="0.2s" style="max-width: 800px">
        <h4 class="text-warning">Layanan Kami</h4>
        <h1 class="display-5 mb-4">Articles For Pro Traders....?</h1>
        <p class="mb-0">
          Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur
          adipisci facilis cupiditate recusandae aperiam temporibus corporis
          itaque quis facere, numquam, ad culpa deserunt sint dolorem autem
          obcaecati, ipsam mollitia hic...?
        </p>
      </div>
      <div class="text-start my-5 wow fadeInUp" data-wow-delay="0.2s">
        <button class="btn btn-secondary rounded-start rounded-bottom" data-bs-toggle="modal" data-bs-target="#filterModal">Filter Data</button>
      </div>

      <div class="table-responsive wow fadeInUp" data-wow-delay="0.2s">
        <table id="readtabels" class="table  table-striped">
          <thead>
            <tr>
              <th>No</th>
              <th>No Induk</th>
              <th>Judul Buku</th>
              <th>Pengarang</th>
              <th>Penerbit</th>
              <th>Eksamplar</th>
              <th>Jenis</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $no = 1;

            // Mendapatkan nilai filter dari form pencarian
            $no_kelas = isset($_GET['no_kelas']) ? $_GET['no_kelas'] : '';
            $jenis = isset($_GET['jenis']) ? $_GET['jenis'] : '';

            // Membuat query dasar
            $sql = "SELECT * FROM buku WHERE 1=1";

            // Menambahkan kondisi filter berdasarkan input pengguna


            if (!empty($no_kelas)) {
              if ($no_kelas == 'di luar rentang') {
                // Jika no_kelas adalah "Di Luar Rentang", ambil data di luar rentang 0-999
                $sql .= " AND (CAST(no_kelas AS UNSIGNED) < 0 OR CAST(no_kelas AS UNSIGNED) > 999)";
              } else {
                // Memisahkan rentang awal dan akhir
                list($min, $max) = explode('-', $no_kelas);
                $sql .= " AND CAST(no_kelas AS UNSIGNED) BETWEEN $min AND $max";
              }
            }
            if (!empty($jenis)) {
              $sql .= " AND jenis = '$jenis'";
            }


            $query = $koneksi->query($sql);

            while ($data = $query->fetch_assoc()) {
            ?>
              <tr>
                <td><?php echo $no++; ?></td>
                <td><?php echo $data['no_induk']; ?></td>
                <td><?php echo $data['judul_buku']; ?></td>
                <td><?php echo $data['pengarang']; ?></td>
                <td><?php echo $data['penerbit']; ?></td>
                <td><?php echo $data['eksamplar']; ?></td>
                <td><?php echo $data['jenis']; ?></td>

              </tr>
            <?php
            }
            ?>
          </tbody>
        </table>
      </div>
    </div>
    <div class="modal fade" id="filterModal" tabindex="-1" role="dialog" aria-labelledby="filterModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="filterModalLabel">Filter Data</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <form method="GET" action="#databuku">
            <input type="hidden" name="page" value="MyApp/data_buku">
            <div class="modal-body">
              <div class="form-group">
                <label for="no_kelas">No Kelas</label>
                <select name="no_kelas" class="form-select">
                  <option value="">Pilih Rentang No Kelas</option>
                  <option value="0-99" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '0-99') ? 'selected' : ''; ?>>0-99 Karya Umum</option>
                  <option value="100-199" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '100-199') ? 'selected' : ''; ?>>100-199 Filsafat & Psikologi</option>
                  <option value="200-299" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '200-299') ? 'selected' : ''; ?>>200-299 Agama</option>
                  <option value="300-399" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '300-399') ? 'selected' : ''; ?>>300-399 Ilmu Sosial</option>
                  <option value="400-499" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '400-499') ? 'selected' : ''; ?>>400-499 Bahasa</option>
                  <option value="500-599" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '500-599') ? 'selected' : ''; ?>>500-599 Ilmu-Ilmu Murni</option>
                  <option value="600-699" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '600-699') ? 'selected' : ''; ?>>600-699 Ilmu-Ilmu Terapan/Teknologi</option>
                  <option value="700-799" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '700-799') ? 'selected' : ''; ?>>700-799 Kesenian & Olahraga</option>
                  <option value="800-899" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '800-899') ? 'selected' : ''; ?>>800-899 Kesusasteraan</option>
                  <option value="900-999" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '900-999') ? 'selected' : ''; ?>>900-999 Sejarah & Geografi</option>
                  <option value="di luar rentang" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == 'di luar rentang') ? 'selected' : ''; ?>>Di Luar Rentang</option>
                </select>
              </div>
              <div class="form-group">
                <label for="jenis">Pilih Jenis</label>
                <select name="jenis" class="form-select">
                  <option value="">Pilih Jenis</option>
                  <option value="F" <?php echo (isset($_GET['jenis']) && $_GET['jenis'] == 'F') ? 'selected' : ''; ?>>F</option>
                  <option value="NF" <?php echo (isset($_GET['jenis']) && $_GET['jenis'] == 'NF') ? 'selected' : ''; ?>>NF</option>
                  <option value="R" <?php echo (isset($_GET['jenis']) && $_GET['jenis'] == 'R') ? 'selected' : ''; ?>>R</option>
                </select>
              </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary rounded" data-bs-dismiss="modal">Batal</button>
              <input type="submit" value="Filter" class="btn btn-primary">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>


  <?php //include "dataBuku.php"
  ?>
  <script>
    $(document).ready(function() {
      $('#readtabels').DataTable({
        "paging": true,
        "lengthChange": true,
        "searching": true,
        "ordering": false,
        "info": true,
        "autoWidth": false,
        "language": {
          "url": "//cdn.datatables.net/plug-ins/1.13.5/i18n/Indonesian.json"
        }
      });
    });
  </script>


  <!-- Footer Start -->
  <?php include "footer.php" ?>
  <!-- Footer End -->




  <!-- Back to Top -->
  <a href="#" class="btn btn-primary btn-lg-square rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>


  <!-- JavaScript Libraries -->
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script> -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>


  <!-- Template Javascript -->
  <script src="js/main.js"></script>




</body>

</html>