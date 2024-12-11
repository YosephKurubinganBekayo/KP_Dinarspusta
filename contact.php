<?php
require 'call_fungtion.php';
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
    // Query untuk memasukkan data ke tabel
    $query = "INSERT INTO tbl_inbox (date_receive_inbox, name_inbox, email_inbox, subject_inbox, message_inbox)
              VALUES ('$date_receive', '$name', '$email', '$subject', '$message')";
}
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

        <!-- Header Start -->
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
        <div class="container-fluid bg-breadcrumb">
            <div class="container text-center py-5" style="max-width: 900px;">
                <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">Kontak Kami</h4>
                <ol class="breadcrumb d-flex justify-content-center mb-0 wow fadeInDown" data-wow-delay="0.3s">
                    <li class="breadcrumb-item"><a href="index.php">Beranda</a></li>
                    <li class="breadcrumb-item active text-primary">Kontak</li>
                </ol>
            </div>
        </div>
        <!-- Header End -->
    </div>
    <!-- Navbar & Hero End -->

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

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <?php

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Ambil data dari form
        $name = $_POST['name'];
        $email = $_POST['email'];
        $no_hp = $_POST['no_hp'];
        $subject = $_POST['subject'];
        $message = $_POST['message'];
        $date_receive = date('Y-m-d H:i:s'); // Tanggal saat ini

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
                window.location = 'contact.php';
            }
        });
    </script>";
            // Redirect kembali ke halaman kontak (opsional)
            // header("Location: contact.php?status=success");
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
                window.location = 'contact.php';
            }
        });
    </script>";
        }
    }
    ?>
</body>

</html>