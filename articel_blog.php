<?php
require 'call_fungtion.php';
?>
<!DOCTYPE html>
<html lang="en">

<?php include "head.php" ?>

<?php
// Ambil data filter jika ada
$tahun_filter = isset($_GET['tahun']) ? $_GET['tahun'] : '';
$bulan_filter = isset($_GET['bulan']) ? $_GET['bulan'] : '';
$departemen_filter = isset($_GET['departemen']) ? $_GET['departemen'] : '';

// Filter data dari database berdasarkan filter yang diterima
$query = "SELECT * FROM kegiatan WHERE 1=1";

if (!empty($tahun_filter)) {
    $query .= " AND YEAR(tanggal) = '$tahun_filter'";
}
if (!empty($bulan_filter)) {
    $query .= " AND MONTH(tanggal) = '$bulan_filter'";
}
if (!empty($departemen_filter)) {
    $query .= " AND id_departemen = '$departemen_filter'";
}
$result = mysqli_query($koneksi, $query);
$blogs = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>

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
                <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">Blog & Artkel Kami</h4>
                <ol class="breadcrumb d-flex justify-content-center mb-0 wow fadeInDown" data-wow-delay="0.3s">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active text-primary">Blog & Artikel</li>
                </ol>
            </div>
        </div>
        <!-- Header End -->
    </div>
    <!-- Navbar & Hero End -->
    <!-- Services Start -->

    <div class="container-fluid blog py-5">
        <div class="container pb-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px">
                <h4 class="text-warning">Blog & Berita</h4>
                <h1 class="display-5 mb-4">Tunggu Apa Lagi? Simal artikel dibawah ini...</h1>
                <p class="mb-0">
                "Di sini, kita mengungkapkan sejarah yang tersembunyi, menggali kebudayaan lokal, dan membagikan pengetahuan baru. Temukan kisah inspiratif, fakta menarik, dan informasi terkini tentang pengelolaan arsip dan perpustakaan digital. Jelajahi artikel-artikel kami dan temukan keajaiban pengetahuan yang menunggu Anda!"
                </p>
            </div>

            <div class="text-end mb-4">
                <button class="btn btn-secondary rounded-start rounded-bottom" data-bs-toggle="modal" data-bs-target="#filterModal">Filter Data</button>
            </div>
            <div class="row g-4 wow fadeInUp" data-wow-delay="0.2s">
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
                            // $deskripsi = substr($deskripsi, 0, $max_length - strlen($judul)) . '...';
                        }
                ?>
                        <div class="col-md-6 col-lg-4">
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
                        </div>
                <?php }
                } else {
                    echo "<p class='text-center'>Tidak ada data</p>";
                } ?>
            </div>

        </div>
    </div>

    <!-- Footer Start -->
    <?php include "footer.php" ?>
    <!-- Footer End -->

    <!-- Copyright Start -->
    
    <!-- Copyright End -->


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


    <!-- Modal Filter -->
    <div class="modal fade" id="filterModal" tabindex="-1" aria-labelledby="filterModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form method="GET" action="">
                    <div class="modal-header">
                        <h5 class="modal-title" id="filterModalLabel">Filter Data</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="tahun" class="form-label">Tahun</label>
                            <input type="number" name="tahun" id="tahun" class="form-control" placeholder="Masukkan Tahun" value="<?= htmlspecialchars($tahun_filter); ?>">
                        </div>
                        <div class="mb-3">
                            <label for="bulan" class="form-label">Bulan</label>
                            <select name="bulan" id="bulan" class="form-select">
                                <option value="">Semua Bulan</option>
                                <?php
                                for ($i = 1; $i <= 12; $i++) {
                                    $bulan = str_pad($i, 2, '0', STR_PAD_LEFT);
                                    $selected = ($bulan_filter == $bulan) ? 'selected' : '';
                                    echo "<option value='$bulan' $selected>" . date('F', mktime(0, 0, 0, $i, 10)) . "</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="departemen" class="form-label">Departemen</label>
                            <select name="departemen" id="departemen" class="form-select">
                                <option value="">Semua Departemen</option>
                                <?php
                                // Ambil daftar departemen dari database
                                $departemen_query = "SELECT * FROM departemen";
                                $departemen_result = mysqli_query($koneksi, $departemen_query);
                                while ($row = mysqli_fetch_assoc($departemen_result)) {
                                    $selected = ($departemen_filter == $row['id']) ? 'selected' : '';
                                    echo "<option value='{$row['id']}' $selected>{$row['nama_departemen']}</option>";
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-warning rounded">Terapkan Filter</button>
                        <button type="button" class="btn btn-secondary rounded" data-bs-dismiss="modal">Batal</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>




</html>