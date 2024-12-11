<?php
include "admin/inc/fungsi.php";
include "admin/inc/koneksi.php";
$mysqli = new databases();
$profile = $mysqli->get_show_profile(); // Panggil fungsi untuk mendapatkan data
$abouts = $mysqli->get_show_aboutus(); // Panggil fungsi untuk mendapatkan data layanan
$services = $mysqli->get_show_services(); // Panggil fungsi untuk mendapatkan data layanan
$blogs = $mysqli->get_show_blog(); // Panggil fungsi untuk mendapatkan data layanan
$departemens = $mysqli->get_show_departemens(); // Panggil fungsi untuk mendapatkan data layanan
?>