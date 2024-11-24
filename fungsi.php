<?php
//-- TEKNIK OOP --



//Koneksi ke database
class databases
{
  public $host   = 'localhost';
  public $name   = 'root';
  public $pass   = '';
  public $dbname = 'arspus';
  public $mysqli;

  //fungsi menguji koneksi database
  function __construct()
  {
    $this->mysqli = new mysqli($this->host, $this->name, $this->pass, $this->dbname);
    if ($this->mysqli->connect_errno) {
      echo "databse not found";
      exit;
    }
  }

  //fungsi menampilkan isi data dari tbl_profile
  public function get_show_profile()
  {
    // Query untuk mengambil satu data berdasarkan id_profile
    $data_profile = "SELECT * FROM tbl_profile WHERE id_profile = 1";
    $hasil_profile = $this->mysqli->query($data_profile);

    // Periksa apakah ada hasil yang ditemukan
    if ($hasil_profile && $hasil_profile->num_rows > 0) {
      return $hasil_profile->fetch_assoc(); // Mengembalikan data sebagai array asosiatif
    } else {
      return null; // Mengembalikan null jika tidak ada data
    }
  }


  //fungsi menampilkan isi data dari tbl_services
  public function get_show_services()
  {
    $language = isset($_GET['lang']) ? $_GET['lang'] : null;
    switch ($language) {
      default:
      case "in":
        $data_services = "SELECT * FROM tbl_services WHERE lang_services='in' ORDER BY id_services DESC";
        break;

      case "en":
        $data_services = "SELECT * FROM tbl_services WHERE lang_services='en' ORDER BY id_services DESC";
        break;
    }
    $hasil_services = $this->mysqli->query($data_services);
    while ($row_services = mysqli_fetch_array($hasil_services)) {
      $result_services[] = $row_services;
    }
    return $result_services;
  }

  public function get_show_services_description()
  {
    $language = isset($_GET['lang']) ? $_GET['lang'] : null;
    switch ($language) {
      default:
      case "in":
        $data_services = "SELECT * FROM tbl_services WHERE lang_services='in' ORDER BY id_services DESC LIMIT 1";
        break;

      case "en":
        $data_services = "SELECT * FROM tbl_services WHERE lang_services='en' ORDER BY id_services DESC LIMIT 1";
        break;
    }
    $hasil_services = $this->mysqli->query($data_services);
    while ($row_services = mysqli_fetch_array($hasil_services)) {
      $result_services[] = $row_services;
    }
    return $result_services;
  }

  public function get_show_services_detail()
  {
    $language = isset($_GET['lang']) ? $_GET['lang'] : null;
    switch ($language) {
      default:
      case "in":
        $data_services = "SELECT * FROM tbl_services WHERE lang_services='in' ORDER BY id_services";
        break;

      case "en":
        $data_services = "SELECT * FROM tbl_services WHERE lang_services='en' ORDER BY id_services";
        break;
    }
    $hasil_services = $this->mysqli->query($data_services);
    while ($row_services = mysqli_fetch_array($hasil_services)) {
      $result_services[] = $row_services;
    }
    return $result_services;
  }


  //fungsi menampilkan isi data dari tbl_aboutus
  public function get_show_aboutus_description()
  {
    $language = isset($_GET['lang']) ? $_GET['lang'] : null;
    switch ($language) {
      default:
      case "in":
        $data_aboutus = "SELECT DISTINCT description_aboutus FROM tbl_aboutus WHERE lang_aboutus='in' ORDER BY id_aboutus DESC";
        break;

      case "en":
        $data_aboutus = "SELECT DISTINCT description_aboutus FROM tbl_aboutus WHERE lang_aboutus='en' ORDER BY id_aboutus DESC";
        break;
    }
    $hasil_aboutus = $this->mysqli->query($data_aboutus);
    while ($row_aboutus = mysqli_fetch_array($hasil_aboutus)) {
      $result_aboutus[] = $row_aboutus;
    }
    return $result_aboutus;
  }

  public function get_show_aboutus()
  {
    $language = isset($_GET['lang']) ? $_GET['lang'] : null;
    switch ($language) {
      default:
      case "in":
        $data_aboutus = "SELECT * FROM tbl_aboutus WHERE lang_aboutus='in' ORDER BY id_aboutus DESC ";
        break;

      case "en":
        $data_aboutus = "SELECT * FROM tbl_aboutus WHERE lang_aboutus='en' ORDER BY id_aboutus DESC ";
        break;
    }
    $hasil_aboutus = $this->mysqli->query($data_aboutus);
    while ($row_aboutus = mysqli_fetch_array($hasil_aboutus)) {
      $result_aboutus[] = $row_aboutus;
    }
    return $result_aboutus;
  }

  public function get_show_aboutus_detail()
  {
    $language = isset($_GET['lang']) ? $_GET['lang'] : null;
    switch ($language) {
      default:
      case "in":
        $data_aboutus = "SELECT * FROM tbl_aboutus WHERE lang_aboutus='in' ORDER BY id_aboutus";
        break;

      case "en":
        $data_aboutus = "SELECT * FROM tbl_aboutus WHERE lang_aboutus='en' ORDER BY id_aboutus";
        break;
    }
    $hasil_aboutus = $this->mysqli->query($data_aboutus);
    while ($row_aboutus = mysqli_fetch_array($hasil_aboutus)) {
      $result_aboutus[] = $row_aboutus;
    }
    return $result_aboutus;
  }
  //fungsi menampilkan isi data dari tbl_contactus
  public function get_show_contactus()
  {
    $language = isset($_GET['lang']) ? $_GET['lang'] : null;
    switch ($language) {
      default:
      case "in":
        $data_contactus = "SELECT * FROM tbl_contactus WHERE lang_contactus='in' ORDER BY id_contactus";
        break;

      case "en":
        $data_contactus = "SELECT * FROM tbl_contactus WHERE lang_contactus='en' ORDER BY id_contactus";
        break;
    }
    $hasil_contactus = $this->mysqli->query($data_contactus);
    while ($row_contactus = mysqli_fetch_array($hasil_contactus)) {
      $result_contactus[] = $row_contactus;
    }
    return $result_contactus;
  }
  //fungsi menampilkan isi data dari tbl_gallery
  public function get_show_gallery()
  {
    $data_gallery = "SELECT DISTINCT category_gallery FROM tbl_gallery ORDER BY id_gallery DESC";
    $hasil_gallery = $this->mysqli->query($data_gallery);
    while ($row_gallery = mysqli_fetch_array($hasil_gallery)) {
      $result_gallery[] = $row_gallery;
    }
    return $result_gallery;
  }
  public function get_show_gallery_detail()
  {
    $data_gallery = "SELECT * FROM tbl_gallery ORDER BY id_gallery DESC";
    $hasil_gallery = $this->mysqli->query($data_gallery);
    while ($row_gallery = mysqli_fetch_array($hasil_gallery)) {
      $result_gallery[] = $row_gallery;
    }
    return $result_gallery;
  }
  //fungsi menampilkan isi data dari tbl_testimonials
  public function get_show_testimonial()
  {
    $data_testimonial = "SELECT * FROM tbl_testimonial ORDER BY id_testimonial ASC";
    $hasil_testimonial = $this->mysqli->query($data_testimonial);
    while ($row_testimonial = mysqli_fetch_array($hasil_testimonial)) {
      $result_testimonial[] = $row_testimonial;
    }
    return $result_testimonial;
  }
}
