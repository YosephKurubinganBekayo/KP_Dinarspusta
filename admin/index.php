<?php
//Mulai Sesion
session_start();
if (isset($_SESSION["ses_username"]) == "") {
	header("location: ../login.php");
} else {
	$data_id = $_SESSION["ses_id"];
	$data_nama = $_SESSION["ses_nama"];
	$data_user = $_SESSION["ses_username"];
	$data_level = $_SESSION["ses_level"];
}

//KONEKSI DB
include "inc/koneksi.php";
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Dinas Kearsipan dan Perpustakaan Kota Kupang</title>
	<link rel="icon" href="dist/img/logo.png">
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.6 -->
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	<!-- summernote -->
	<link href="assets/summernote/summernote.min.css" rel="stylesheet">
	<!-- DataTables -->
	<!-- DataTables CSS -->
	<!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css"> -->
	<!-- Buttons CSS -->
	<!-- <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css"> -->

	<link rel="stylesheet" href="plugins/datatables2/Buttons-1.5.1/css/buttons.dataTables.min.css">
	<!-- <link rel="stylesheet" href="plugins/datatables2/DataTables-1.10.16/css/dataTables.bootstrap.css"> -->
	<link rel="stylesheet" href="plugins/datatables2/DataTables-1.10.16/css/jquery.dataTables.min.css">
	<!-- Select2 -->
	<link rel="stylesheet" href="plugins/select2/select2.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
	<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="dist/css/skins/skin-blue-light.min.css">
	<!-- alert / pesan -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<!-- fancybox -->
	<link rel="stylesheet" href="assets/fancybox/jquery.fancybox.css">
</head>

<body class="hold-transition skin-blue-light sidebar-mini">

	<!-- Site wrapper -->
	<div class="wrapper">

		<header class="main-header">
			<style>
				.main-header {
					position: fixed;
					width: 100%;
					z-index: 1000;
				}

				.navbar {
					margin: 0;
					padding-right: 20px;

				}

				.messages-menu .dropdown-menu {
					width: 400px;
				}
			</style>
			<!-- Logo -->
			<a href="index.php" class="logo">
				<span class="logo-lg">
					<b>Arspus</b>
				</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-fixed-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less -->
						<li class="dropdown messages-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="fa fa-envelope"></i>
								<?php
								// Query untuk menghitung jumlah pesan
								$result_count = mysqli_query($koneksi, "SELECT COUNT(*) AS total FROM tbl_inbox");
								$count_data = mysqli_fetch_assoc($result_count);
								$total_messages = $count_data['total'];
								?>
								<span class="label label-success"><?php echo $total_messages; ?></span> <!-- Jumlah pesan -->
							</a>
							<ul class="dropdown-menu">
								<li class="header">Anda memiliki <?php echo $total_messages; ?> pesan</li>
								<li>
									<!-- inner menu: contains the messages -->
									<ul class="menu" style="list-style: none; padding: 0; margin: 0;">
										<?php
										// Query untuk mengambil data pesan terbaru
										$result_messages = mysqli_query($koneksi, "SELECT * FROM tbl_inbox ORDER BY date_receive_inbox DESC LIMIT 3");
										while ($message = mysqli_fetch_assoc($result_messages)) {
										?>
											<li style="padding: 10px 15px; border-bottom: 1px solid #ddd;">
												<a href="?page=MyApp/data_pesan_detail&kode=<?php echo $message['id_inbox'] ?>" style="text-decoration: none; color: #333; display: block;">
													<!-- start message -->
													<h4 style="margin: 0; font-size: 14px;">
														<?php echo htmlspecialchars(substr($message['name_inbox'], 0, 20)); ?>
													</h4>
													<p style="margin: 5px 0 0; font-size: 12px; color: #666;">
														<?php echo htmlspecialchars(substr($message['message_inbox'], 0, 30)); ?>...
													</p>
													<small style="float: left; color: #999;">
														<i class="fa fa-calendar"></i>
														<?php
														// Format waktu
														echo date("j F Y, H:i", strtotime($message['date_receive_inbox']));
														?>
													</small>
												</a>
											</li>
										<?php } ?>
									</ul>
								</li>
								<li class="footer" style="text-align: center;">
									<a href="?page=MyApp/data_pesan" style="color: #007bff; text-decoration: none;">Lihat semua pesan</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>

			</nav>
		</header>


		<!-- =============================================== -->

		<!-- Left side column. contains the sidebar -->
		<aside class="main-sidebar">
			<!-- <style>
				.main-sidebar {
					position: fixed;

					height: 100vh;
				}
			</style> -->
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				</<b>
				<div class="user-panel">
					<div class="pull-left image">
						<img src="dist/img/avatar.png" class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>
							<?php echo $data_nama; ?>
						</p>
						<span class="label label-warning">
							<?php echo $data_level; ?>
						</span>
					</div>
				</div>
				</br>
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="header">MAIN NAVIGATION</li>

					<!-- Level  -->
					<?php
					if ($data_level == "Administrator") {
					?>

						<li class="treeview">
							<a href="?page=admin">
								<i class="fa fa-dashboard"></i>
								<span>Dashboard</span>
								<span class="pull-right-container">
								</span>
							</a>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="fa fa-folder"></i>
								<span>Kelola Data</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="?page=MyApp/data_agt">
										<i class="fa fa-users"></i>Data Anggota</a>
								</li>
								<li>
									<a href="?page=MyApp/data_buku">
										<i class="fa fa-book"></i>Data inventaris Buku</a>
								</li>
								<li>
									<a href="?page=MyApp/data_kunjungan">
										<i class="fa "></i>Riwayat Kunjungan</a>
								</li>
								<li>
									<a href="?page=MyApp/data_pengunjung">
										<i class="fa fa-users"></i>Data Pengunjung</a>
								</li>
								<li>
									<a href="?page=MyApp/data_pegawai">
										<i class="fa fa-"></i>Data Pegawai</a>
								</li>

								<!-- <li class="treeview">
									<a href="#">
										<i class="fa fa-book"></i>
										<span>Pengunjung</span>
										<span class="pull-right-container">
											<i class="fa fa-angle-left pull-right"></i>
										</span>
									</a>
									<ul class="treeview-menu">
										<li>
											<a href="?page=MyApp/data_kunjungan">
												<i class="fa fa-arrow-circle-o-down"></i>Riwayat Kunjungan</a>
										</li>
										<li>
											<a href="?page=log_kembali">
												<i class="fa fa-arrow-circle-o-up"></i>Pengembalian</a>
										</li>
									</ul>
								</li> -->
								<!-- <li class="treeview">
									<a href="#">
										<i class="fa fa-book"></i>
										<span>Riwayat Transaksi</span>
										<span class="pull-right-container">
											<i class="fa fa-angle-left pull-right"></i>
										</span>
									</a>
									<ul class="treeview-menu">
										<li>
											<a href="?page=log_pinjam">
												<i class="fa fa-arrow-circle-o-down"></i>Peminjaman</a>
										</li>
										<li>
											<a href="?page=log_kembali">
												<i class="fa fa-arrow-circle-o-up"></i>Pengembalian</a>
										</li>
									</ul>
								</li> -->
								<!-- <li class="treeview">
									<a href="#">
										<i class="fa fa-print"></i>
										<span>Laporan</span>
										<span class="pull-right-container">
											<i class="fa fa-angle-left pull-right"></i>
										</span>
									</a>
									<ul class="treeview-menu">
										<li>
											<a href="?page=laporan_sirkulasi">
												<i class="fa fa-file"></i>Laporan Sirkulasi</a>
										</li>
										<li>
											<a href="?page=laporan_inventaris_buku">
												<i class="fa fa-file"></i>Laporan Inventaris Buku</a>
										</li>
									</ul>
								</li> -->

							</ul>
						</li>
						<li class="treeview">
							<a href="?page=data_sirkul">
								<i class="fa fa-refresh"></i>
								<span>Sirkulasi</span>
								<span class="pull-right-container">
								</span>
							</a>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="fa fa-book"></i>
								<span>Riwayat Transaksi</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="?page=log_pinjam">
										<i class="fa fa-arrow-circle-o-down"></i>Peminjaman</a>
								</li>
								<li>
									<a href="?page=log_kembali">
										<i class="fa fa-arrow-circle-o-up"></i>Pengembalian</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="fa fa-print"></i>
								<span>Laporan</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="?page=laporan_sirkulasi">
										<i class="fa fa-file"></i>Laporan Sirkulasi</a>
								</li>
								<li>
									<a href="?page=laporan_inventaris_buku">
										<i class="fa fa-file"></i>Laporan Inventaris Buku</a>
								</li>
							</ul>
						</li>
						<!-- <li class="treeview">
							<a href="#">
								<i class="fa fa-book"></i>
								<span>Kepegawaian</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu">


								<li>
									<a href="?page=MyApp/data_departemen">
										<i class="fa fa-"></i>Data Depatemen</a>
								</li>
								<li>
									<a href="?page=MyApp/data_bidang">
										<i class="fa fa-"></i>Data Bidang</a>
								</li>
								<li>
									<a href="?page=MyApp/data_pegawai">
										<i class="fa fa-"></i>Data Pegawai</a>
								</li>
							</ul>
						</li> -->
						<!-- <li class="treeview">
							<a href="#">
								<i class="fa fa-print"></i>
								<span>Laporan</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="?page=laporan_sirkulasi">
										<i class="fa fa-file"></i>Laporan Sirkulasi</a>
								</li>
								<li>
									<a href="?page=laporan_inventaris_buku">
										<i class="fa fa-file"></i>Laporan Inventaris Buku</a>
								</li>
							</ul>
						</li> -->
						<li class="header">SETTING</li>
						<li class="treeview">
							<a href="?page=MyApp/data_pengguna">
								<i class="fa fa-user"></i>
								<span>Pengguna Sistem</span>
								<span class="pull-right-container">
								</span>
							</a>
						</li>
						<!-- <li class="treeview">
							<a href="#">
								<i class="fa fa-home"></i>
								<span>Profil Website</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="?page=MyApp/profile_dinas">
										<i class="fa fa-profile"></i>Profil Instansi</a>
								</li>
								<li>
									<a href="?page=MyApp/tentang_kami">
										<i class="fa fa-service"></i>Tentang Kami</a>
								</li>
								<li class="treeview">
									<a href="#">
										<i class="fa fa-"></i>
										<span>Layanan Kami</span>
										<span class="pull-right-container">
											<i class="fa fa-angle-left pull-right"></i>
										</span>
									</a>
									<ul class="treeview-menu">
										<li>
											<a href="?page=MyApp/data_informasi">
												<i class="fa fa-"></i>Informasi Pelayanan</a>
										</li>
										<li>
											<a href="?page=MyApp/layanan">
												<i class="fa fa-service"></i>Layanan</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="?page=MyApp/kegiatan">
										<i class="fa fa-activity"></i>Kegiatan</a>
								</li>
							</ul>
						</li> -->
						<!-- belum tambahkan navigasinya-->


					<?php
					} elseif ($data_level == "Petugas") {
					?>

						<li class="treeview">
							<a href="?page=petugas">
								<i class="fa fa-dashboard"></i>
								<span>Dashboard</span>
								<span class="pull-right-container">
								</span>
							</a>
						</li>

						<li class="treeview">
							<a href="#">
								<i class="fa fa-folder"></i>
								<span>Kelola Data</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu">

								<li>
									<a href="?page=MyApp/data_buku">
										<i class="fa fa-book"></i>Data inventaris Buku</a>
								</li>
								<li>
									<a href="?page=MyApp/data_agt">
										<i class="fa fa-users"></i>Data Anggota</a>
								</li>
							</ul>
						</li>

						<li class="treeview">
							<a href="?page=data_sirkul">
								<i class="fa fa-refresh"></i>
								<span>Sirkulasi</span>
								<span class="pull-right-container">
								</span>
							</a>
						</li>

						<li class="treeview">
							<a href="#">
								<i class="fa fa-book"></i>
								<span>Log Data</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu">

								<li>
									<a href="?page=log_pinjam">
										<i class="fa fa-arrow-circle-o-down"></i>Peminjaman</a>
								</li>
								<li>
									<a href="?page=log_kembali">
										<i class="fa fa-arrow-circle-o-up"></i>Pengembalian</a>
								</li>
							</ul>
						</li>

						<li class="treeview">
							<a href="#">
								<i class="fa fa-print"></i>
								<span>Laporan</span>
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu">
								<!-- <li>
									<a href="?page=laporan_sirkulasi">
										<i class="fa fa-file"></i>Laporan Sirkulasi</a>
								</li> -->
								<li>
									<a href="?page=laporan_inventaris_buku">
										<i class="fa fa-file"></i>Laporan Inventaris Buku</a>
								</li>
							</ul>
						</li>

						<li class="header">SETTING</li>

					<?php
					}
					?>

					<li>
						<a href="logout.php" onclick="return confirm('Anda yakin keluar dari aplikasi ?')">
							<i class="fa fa-sign-out"></i>
							<span>Logout</span>
							<span class="pull-right-container"></span>
						</a>
					</li>


			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- =============================================== -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<!-- Main content -->
			<section class="content">
				<br><br>
				<?php
				if (isset($_GET['page'])) {
					$hal = $_GET['page'];

					switch ($hal) {
							//Klik Halaman Home Pengguna
						case 'admin':
							include "home/admin.php";
							break;
						case 'petugas':
							include "home/petugas.php";
							break;
							// pesan
						case 'MyApp/data_pesan':
							include "admin/pesan/semua_pesan.php";
							break;
						case 'MyApp/data_pesan_detail':
							include "admin/pesan/detail_pesan.php";
							break;
						case 'MyApp/del_pesan':
							include "admin/pesan/del_pesan.php";
							break;
							//Pengguna
						case 'MyApp/data_pengguna':
							include "admin/pengguna/data_pengguna.php";
							break;
						case 'MyApp/add_pengguna':
							include "admin/pengguna/add_pengguna.php";
							break;
						case 'MyApp/edit_pengguna':
							include "admin/pengguna/edit_pengguna.php";
							break;
						case 'MyApp/del_pengguna':
							include "admin/pengguna/del_pengguna.php";
							break;
							//pengunjung
						case 'MyApp/data_kunjungan':
							include "admin/Pengunjung/data_kunjungan.php";
							break;
						case 'MyApp/add_kunjungan':
							include "admin/pengunjung/add_kunjungan.php";
							break;
						case 'MyApp/edit_kunjungan':
							include "admin/pengunjung/edit_kunjungan.php";
							break;
						case 'MyApp/del_kunjungan':
							include "admin/pengunjung/del_kunjungan.php";
							break;
							//agt
						case 'MyApp/data_agt':
							include "admin/agt/data_agt.php";
							break;
						case 'MyApp/add_agt':
							include "admin/agt/add_agt.php";
							break;
						case 'MyApp/edit_agt':
							include "admin/agt/edit_agt.php";
							break;
						case 'MyApp/del_agt':
							include "admin/agt/del_agt.php";
							break;
						case 'MyApp/print_agt':
							include "admin/agt/print_agt.php";
							break;
						case 'MyApp/print_allagt':
							include "admin/agt/print_allagt.php";
							break;
							// pegawai
						case 'MyApp/data_pegawai':
							include "admin/pegawai/data_pegawai.php";
							break;
						case 'MyApp/add_pegawai':
							include "admin/pegawai/add_pegawai.php";
							break;
						case 'MyApp/edit_pegawai':
							include "admin/pegawai/edit_pegawai.php";
							break;
						case 'MyApp/del_pegawai':
							include "admin/pegawai/del_pegawai.php";
							break;
							// departemen
						case 'MyApp/data_departemen':
							include "admin/departemen/departemen.php";
							break;
						case 'MyApp/add_departemen':
							include "admin/departemen/add_departemen.php";
							break;
						case 'MyApp/edit_departemen':
							include "admin/departemen/edit_departemen.php";
							break;
						case 'MyApp/del_departemen':
							include "admin/departemen/del_departemen.php";
							break;
							// bidang
						case 'MyApp/data_bidang':
							include "admin/bidang/bidang.php";
							break;
						case 'MyApp/add_bidang':
							include "admin/bidang/add_bidang.php";
							break;
						case 'MyApp/edit_bidang':
							include "admin/bidang/edit_bidang.php";
							break;
						case 'MyApp/del_bidang':
							include "admin/bidang/del_bidang.php";
							break;
							// case 'MyApp/print_agt':
							// 	include "admin/agt/print_agt.php";
							// 	break;
							// case 'MyApp/print_allagt':
							// 	include "admin/agt/print_allagt.php";
							// 	break;
							//buku
						case 'MyApp/data_buku':
							include "admin/buku/data_buku.php";
							break;
						case 'MyApp/add_buku':
							include "admin/buku/add_buku.php";
							break;
						case 'MyApp/edit_buku':
							include "admin/buku/edit_buku.php";
							break;
						case 'MyApp/del_buku':
							include "admin/buku/del_buku.php";
							break;
							//sirkul
						case 'data_sirkul':
							include "admin/sirkul/data_sirkul.php";
							break;
						case 'MyApp/data_sirkul_detail':
							include "admin/sirkul/data_sirkul_detail.php";
							break;
						case 'add_sirkul':
							include "admin/sirkul/add_sirkul.php";
							break;
						case 'panjang':
							include "admin/sirkul/panjang.php";
							break;
						case 'kembali':
							include "admin/sirkul/kembali.php";
							break;
							//log
						case 'log_pinjam':
							include "admin/log/log_pinjam.php";
							break;
						case 'log_kembali':
							include "admin/log/log_kembali.php";
							break;
							//laporan
						case 'laporan_sirkulasi':
							include "admin/laporan/laporan_sirkulasi.php";
							break;
						case 'laporan_inventaris_buku':
							include "admin/laporan/laporan_inventaris_buku.php";
							break;
							//profile
						case 'MyApp/profile_dinas':
							include "admin/profile/profile.php";
							break;
						case 'MyApp/edit_profile':
							include "admin/profile/edit_profile.php";
							break;
							// tentang kami
						case 'MyApp/tentang_kami':
							include "admin/tentang_kami/profil.php";
							break;
						case 'MyApp/add_tentang_kami':
							include "admin/tentang_kami/add_tentang_kami.php";
							break;
						case 'MyApp/edit_tentang_kami':
							include "admin/tentang_kami/edit_tentang_kami.php";
							break;
						case 'MyApp/del_tentang_kami':
							include "admin/tentang_kami/del_tentang_kami.php";
							break;
							// kegiatan
						case 'MyApp/kegiatan':
							include "admin/kegiatan/kegiatan.php";
							break;
						case 'MyApp/add_kegiatan':
							include "admin/kegiatan/add_kegiatan.php";
							break;
						case 'MyApp/edit_kegiatan':
							include "admin/kegiatan/edit_kegiatan.php";
							break;
						case 'MyApp/del_kegiatan':
							include "admin/kegiatan/del_kegiatan.php";
							break;
							// layanan
						case 'MyApp/layanan':
							include "admin/layanan/layanan.php";
							break;
						case 'MyApp/add_layanan':
							include "admin/layanan/add_layanan.php";
							break;
						case 'MyApp/edit_layanan':
							include "admin/layanan/edit_layanan.php";
							break;
						case 'MyApp/del_layanan':
							include "admin/layanan/del_layanan.php";
							break;
							// info layanan
						case 'MyApp/data_informasi':
							include "admin/informsi_pelayanan/informasi.php";
							break;
						case 'MyApp/add_informasi':
							include "admin/informsi_pelayanan/add_informasi.php";
							break;
						case 'MyApp/edit_informasi':
							include "admin/informsi_pelayanan/edit_informasi.php";
							break;
						case 'MyApp/del_informasi':
							include "admin/informsi_pelayanan/del_informasi.php";
							break;
						default:
							echo "<center><br><br><br><br><br><br><br><br><br>
				  <h1> Halaman tidak ditemukan !</h1></center>";
							break;
					}
				} else {
					// Auto Halaman Home Pengguna
					if ($data_level == "Administrator") {
						include "home/admin.php";
					} elseif ($data_level == "Petugas") {
						include "home/petugas.php";
					}
				}
				?>



			</section>
			<!-- /.content -->
		</div>
		<!-- jQuery 2.2.3 -->
		<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
		<!--Bootstrap 3.3.6 -->
		<script src="bootstrap/js/bootstrap.min.js"></script>
		<script src="plugins/select2/select2.full.min.js"></script>
		<!-- DataTables -->
		<!-- <script src="plugins/datatables/jquery.dataTables.min.js"></script> -->
		<!-- <script src="plugins/datatables/dataTables.bootstrap.min.js"></script> -->
		<!-- DataTables -->
		<!-- <script src="plugins/datatables2/DataTables-1.10.16/js/dataTables.bootstrap.min.js"></script> -->
		<script src="plugins/datatables2/DataTables-1.10.16/js/jquery.dataTables.min.js"></script>
		<!-- butons js -->
		<script src="plugins/datatables2/Buttons-1.5.1/js/dataTables.buttons.min.js"></script>
		<script src="plugins/datatables2/Buttons-1.5.1/js/buttons.flash.min.js"></script>
		<script src="plugins/datatables2/JSZip-2.5.0/jszip.min.js"></script>
		<script src="plugins/datatables2/pdfmake-0.1.32/pdfmake.min.js"></script>
		<script src="plugins/datatables2/pdfmake-0.1.32/vfs_fonts.js"></script>
		<script src="plugins/datatables2/Buttons-1.5.1/js/buttons.html5.min.js"></script>
		<script src="plugins/datatables2/Buttons-1.5.1/js/buttons.print.min.js"></script>
		<!-- summernore -->
		<!-- include summernote css/js -->
		<script src="assets/summernote/summernote.min.js"></script>
		<!-- AdminLTE App -->
		<script src="dist/js/app.min.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="dist/js/demo.js"></script>
		<!-- fancybox -->
		<script src="assets/fancybox/jquery.fancybox.js"></script>
		<!-- page script -->

		<!-- script fancybox -->
		<script>
			$(document).ready(function() {
				$('[data-fancybox="gallery"]').fancybox({
					buttons: [
						"zoom",
						"close"
					]
				});
			});
		</script>
		<!-- script_summernote -->
		<script>
			$('#summernote').summernote({
				tabsize: 2,
				height: 200,

			});
		</script>
		<!-- script datatabels-->
		<script>
			$(function() {
				$("#tabel_kelola_data").DataTable({
					columnDefs: [{
						"defaultContent": "-",
						"targets": "_all"
					}],
				});
				$("#tabel_laporanasli").DataTable({
					dom: 'Bfrtip', // Tambahkan 'Bfrtip' untuk mengaktifkan tombol
					buttons: ['csv', 'excel', 'pdf', 'print'],
					// "paging": true,
					// "lengthChange": true,
					// "searching": false,
					"ordering": false,
					// "info": true,
					"autoWidth": false

				});
				$(document).ready(function() {
					// Inisialisasi DataTable
					$('#tabel_laporan_inventaris_buku').DataTable({
						dom: 'Bfrtip',
						buttons: [{
							extend: 'excel',
							filename: function() {
								// Dapatkan tanggal hari ini
								let date = new Date();
								let formattedDate = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate();
								// Ambil nilai filter dari form (bulan, tahun, no_kelas)
								let bulan = $('input[name="bulan"]').val() || '';
								let tahun = $('input[name="tahun"]').val() || '';
								let noKelas = $('select[name="no_kelas"]').val() || '';
								let ket = $('input[name="keterangan"]').val() || '';
								// Gabungkan nama file dengan nilai filter
								return 'Laporan inventaris buku_' + bulan + tahun + noKelas + ket + '_' + formattedDate;
							},
							text: 'Export to Excel'
						}]
					});
				});
				$("#tabel_laporan1").DataTable({
					dom: 'Bfrtip', // Tambahkan 'Bfrtip' untuk mengaktifkan tombol
					buttons: ['csv', 'excel', 'pdf', 'print'],
					// "paging": true,
					// "lengthChange": true,
					// "searching": false,
					// "ordering": true,
					// "info": true,
					// "autoWidth": false

				});
				$('#example2').DataTable({
					"paging": true,
					"lengthChange": false,
					"searching": false,
					"ordering": true,
					"info": true,
					"autoWidth": false
				});
				$("#readtabels").DataTable({
					columnDefs: [{
						"defaultContent": "-",
						"targets": "_all"
					}],
				});
			});
		</script>
		<!-- script select -->
		<script>
			$(function() {
				// Initialize Select2 Elements
				$(".select2").select2();
			});
		</script>

</body>

</html>