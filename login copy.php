<?php
require 'call_fungtion.php';

?>
<!DOCTYPE html>
<html lang="id">

<?php include "head.php" ?>

<body>
  <!-- Spinner Start -->
  <!-- Spinner End -->

  <!-- Topbar Start -->
  <?php include "topbar.php" ?>

  <!-- Navbar & Hero Start -->
  <div class="container-fluid position-relative p-0">
    <?php include "navbar.php" ?>

    <!-- Header Start -->
    <style>
      .bg-breadcrumb {
        position: relative;
        overflow: hidden;
        background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),
          url(img/<?php echo $profile['gambar']; ?>);
        background-position: center center;
        background-repeat: no-repeat;
        background-size: cover;
        padding: 140px 0 60px 0;
        transition: 0.5s;
      }
    </style>
    <div class="container-fluid bg-breadcrumb">
      <div class="container text-center py-5" style="max-width: 900px;">
        <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">Login</h4>
        <ol class="breadcrumb d-flex justify-content-center mb-0 wow fadeInDown" data-wow-delay="0.3s">
          <li class="breadcrumb-item"><a href="index.php">Beranda</a></li>
          <li class="breadcrumb-item active text-primary">login</li>
        </ol>
      </div>
    </div>
    <!-- Header End -->

    <!-- Login Form -->
    <div id="about" class="container-fluid about py-5 ">
      <div class="container pb-5 ">
        <div class="row g-5 pb-5 border-bottom">
          <div class="col-xl-7 wow fadeInRight" data-wow-delay="0.2s">
            <div class="position-relative overflow-hidden">
              <h1 class="display-4 fw-bold">Dinas Kearsipan dan Perpustakaan</h1>
              <p class="lead">Sistem Manajemen Arsip dan Perpustakaan. Masuk untuk melanjutkan.</p>
              <img src="img/aset/login.png" class="img-fluid" style="width: 100%; height: 345px; object-fit: cover;" alt="" />
            </div>
          </div>
          <div class="col-lg-5 mb-5 mb-lg-0 position-relative">
            <div class="card bg-glass h-100">
              <div class="card-body px-4 py-5 px-md-5">
                <form action="#" method="post">
                  <div class="row pb-3">
                    <h2>Masukan Username dan Password untuk Login</h2>
                  </div>

                  <!-- Username Input -->
                  <div data-mdb-input-init class="form-outline mb-4">
                    <label class="form-label" for="username">Username</label>
                    <input type="text" id="username" name="username" class="form-control" required />
                  </div>

                  <!-- Password Input -->
                  <div data-mdb-input-init class="form-outline mb-4">
                    <label class="form-label" for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-control" required />
                  </div>

                  <!-- Submit Button -->
                  <button name="btnLogin" type="submit" class="btn btn-secondary btn-block my-3">Login</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Team End -->

    <!-- Footer Start -->
    <?php include "footer.php" ?>

    <!-- Copyright Start -->
    <div class="container-fluid copyright py-4">
      <div class="container">
        <div class="row g-4 align-items-center">
          <div class="col-md-6 text-center text-md-start mb-md-0">
            <span class="text-body"><a href="#" class="border-bottom text-white"><i class="fas fa-copyright text-light me-2"></i>Your Site Name</a>, All right reserved.</span>
          </div>
          <div class="col-md-6 text-center text-md-end text-body">
            Designed By <a class="border-bottom text-white" href="https://htmlcodex.com">HTML Codex</a> Distributed By <a class="border-bottom text-white" href="https://themewagon.com">ThemeWagon</a>
          </div>
        </div>
      </div>
    </div>
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
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

</body>

</html>
<?php
if (isset($_POST['btnLogin'])) {
  $username = mysqli_real_escape_string($koneksi, $_POST['username']);
  $password = mysqli_real_escape_string($koneksi, md5($_POST['password']));

  $sql_login = "SELECT * FROM tb_pengguna WHERE BINARY username='$username' AND password='$password'";
  $query_login = mysqli_query($koneksi, $sql_login);
  $data_login = mysqli_fetch_array($query_login, MYSQLI_BOTH);
  $jumlah_login = mysqli_num_rows($query_login);

  if ($jumlah_login == 1) {
    session_start();
    $_SESSION["ses_id"] = $data_login["id_pengguna"];
    $_SESSION["ses_nama"] = $data_login["nama_pengguna"];
    $_SESSION["ses_username"] = $data_login["username"];
    $_SESSION["ses_password"] = $data_login["password"];
    $_SESSION["ses_level"] = $data_login["level"];

    echo "<script>
              Swal.fire({
                  title: 'Login Berhasil',
                  text: '',
                  icon: 'success',
                  confirmButtonText: 'OK'
              }).then((result) => {
                  if (result.isConfirmed) {
                      window.location = 'admin/index.php';
                  }
              });
          </script>";
  } else {
    echo "<script>
              Swal.fire({
                  title: 'Login Gagal',
                  text: 'Username atau password salah!',
                  icon: 'error',
                  confirmButtonText: 'OK'
              }).then((result) => {
                  if (result.isConfirmed) {
                      window.location = 'login.php';
                  }
              });
          </script>";
  }
}
?>