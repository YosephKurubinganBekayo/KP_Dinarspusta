<?php
//include "admin/inc/fungsi.php";
// $mysqli = new databases();
// $profile = $mysqli->get_show_profile(); 
?>

<head>
  <meta charset="utf-8" />
  <?php
  $sql_profile = $koneksi->query("SELECT * FROM tbl_profile WHERE id_profile = 1");
  $profile = $sql_profile->fetch_assoc();
  if ($profile) { ?>
    <title><?php echo $profile['copyright'] ?></title>
  <?php } else {
    echo "<title>Nama website</title>";
  }
  ?>
  <!-- <meta name="description" content="$showprofile[description]">
            <meta name="keywords" content="$showprofile[keywords]">
            <meta http-equiv="copyright" content="$showprofile[copyright]">
            <meta name="author" content="$showprofile[author]">
            <link rel="shortcut icon" href="img/$showprofile[icon]" />"; -->
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <meta content="<?php echo $profile['keywords'] ?>" name="keywords" />
  <meta name="author" content="<?php echo $profile['copyright'] ?>">

  <meta content="<?php echo $profile['description'] ?>" name="description" />
  <link rel="icon" href="img/profil/<?php echo $profile['logo'] ?>" />
  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet" />

  <!-- Icon Font Stylesheet -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

  <!-- Libraries Stylesheet -->
  <link rel="stylesheet" href="lib/animate/animate.min.css" />
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet" />
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

  <!-- Customized Bootstrap Stylesheet -->
  <link href="css/bootstrap.min.css" rel="stylesheet" />
  <!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css"> -->
  <link rel="stylesheet" href="admin/plugins/datatables2/DataTables-1.10.16/css/jquery.dataTables.min.css">

  <!-- jQuery -->

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- Bootstrap JS -->
  <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script> -->
  <!-- DataTables JS -->
  <!-- <script src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script> -->
  <script src="admin/plugins/datatables2/DataTables-1.10.16/js/jquery.dataTables.min.js"></script>

  <!-- Template Stylesheet -->
  <link href="css/style.css" rel="stylesheet" />
</head>