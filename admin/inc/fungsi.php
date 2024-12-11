<?php
//-- TEKNIK OOP --



//Koneksi ke database
class databases
{
  public $host   = 'localhost';
  public $name   = 'root';
  public $pass   = '';
  public $dbname = 'dbarspus';
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
    $data_services = "SELECT * FROM layanan ORDER BY id ASC";
    $hasil_services = $this->mysqli->query($data_services);
    while ($row_services = mysqli_fetch_array($hasil_services)) {
      $result_services[] = $row_services;
    }
    return $result_services;
  }
  //fungsi menampilkan isi data dari tbl_services
  public function get_show_departemens()
  {
    $data_departemens = "SELECT * FROM departemen ORDER BY id ASC";
    $hasil_departemens = $this->mysqli->query($data_departemens);
    while ($row_departemens = mysqli_fetch_array($hasil_departemens)) {
      $result_departemens[] = $row_departemens;
    }
    return $result_departemens;
  }
  public function get_show_services_departement($id_departemen)
  {
    // Query untuk mengambil layanan berdasarkan departemen
    $data_services = "SELECT * FROM layanan WHERE id_departemen = ? ORDER BY id ASC";

    // Persiapkan statement
    $stmt = $this->mysqli->prepare($data_services);

    if ($stmt) {
      // Bind parameter
      $stmt->bind_param("i", $id_departemen);

      // Eksekusi statement
      $stmt->execute();

      // Ambil hasilnya
      $result = $stmt->get_result();
      $result_services = [];

      while ($row_services = $result->fetch_assoc()) {
        $result_services[] = $row_services;
      }

      // Kembalikan hasil sebagai array
      return $result_services;
    } else {
      // Jika ada kesalahan dalam query
      return [];
    }
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

    $data_aboutus = "SELECT * FROM tbl_aboutus ORDER BY id_aboutus ASC ";


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
  //fungsi untuk menampilkan blog dan berita
  public function get_show_blog()
  {
    $data_blogs = "SELECT * FROM kegiatan ORDER BY tanggal DESC";
    $hasil_blogs = $this->mysqli->query($data_blogs);
    while ($row_blogs = mysqli_fetch_array($hasil_blogs)) {
      $result_blogs[] = $row_blogs;
    }
    return $result_blogs;
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
