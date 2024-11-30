<?php
// Koneksi database

// Proses tambah data ketika form disubmit
if (isset($_POST['tambah'])) {
  $id_departemen = $_POST['id_departemen']; // Nama departemen diwakili oleh ID
  $alamat = $_POST['alamat'];
  $lantai = $_POST['lantai'];
  $jam_operasional = $_POST['jam_operasional'];
  $jam_tambahan = $_POST['jam_tambahan'];
  $tutup = $_POST['tutup'];

  // Periksa apakah departemen sudah memiliki data di tabel informasi_pelayanan
  $cek_departemen = $koneksi->query("SELECT * FROM informasi_pelayanan WHERE id_departemen = '$id_departemen'");
  if ($cek_departemen->num_rows > 0) {
    echo "<script>
        Swal.fire({title: 'Tambah Data Gagal', text: 'Departemen ini sudah memiliki informasi pelayanan.', icon: 'error', confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/add_informasi';
            }
        })</script>";
    exit;
  }

  // Proses upload gambar jika ada
  $gambar = null; // Default gambar null
  if (!empty($_FILES['gambar']['name'])) {
    $target_dir = "../img/";
    $gambar_baru = basename($_FILES['gambar']['name']);
    $target_file = $target_dir . $gambar_baru;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    // Validasi file gambar
    $check = getimagesize($_FILES["gambar"]["tmp_name"]);
    if ($check !== false && in_array($imageFileType, ['jpg', 'jpeg', 'png'])) {
      if (move_uploaded_file($_FILES["gambar"]["tmp_name"], $target_file)) {
        $gambar = $gambar_baru; // Set nama gambar untuk disimpan di database
      } else {
        echo "<script>alert('Gagal mengupload gambar.');</script>";
      }
    } else {
      echo "<script>alert('File yang diunggah bukan gambar atau format tidak sesuai.');</script>";
    }
  }

  // Query tambah data
  $stmt = $koneksi->prepare("INSERT INTO informasi_pelayanan 
        (`id_departemen`, `alamat`, `lantai`, `jam_operasional`, `jam_tambahan`, `tutup`, `gambar`) 
        VALUES (?, ?, ?, ?, ?, ?, ?)");
  $stmt->bind_param(
    "sssssss",
    $id_departemen,
    $alamat,
    $lantai,
    $jam_operasional,
    $jam_tambahan,
    $tutup,
    $gambar
  );

  if ($stmt->execute()) {
    echo "<script>
        Swal.fire({title: 'Tambah Data Berhasil', text: '', icon: 'success', confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/data_informasi';
            }
        })</script>";
  } else {
    echo "<script>
        Swal.fire({title: 'Tambah Data Gagal', text: 'Cek kembali data yang dimasukkan.', icon: 'error', confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=MyApp/add_informasi';
            }
        })</script>";
  }

  $stmt->close();
}
?>
<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="box box-info">
        <div class="box-header with-border">
          <h3 class="box-title">Tambah Informasi Pelayanan</h3>
        </div>
        <form action="" method="post" enctype="multipart/form-data">
          <div class="box-body">
            <div class="form-group">
              <label>Nama Departemen</label>
              <select name="id_departemen" class="form-control" required>
                <option value="">-- Pilih Departemen --</option>
                <?php
                // Hanya tampilkan departemen yang belum memiliki informasi pelayanan
                $query_departemen = $koneksi->query("SELECT id, nama_departemen FROM departemen WHERE id NOT IN (SELECT id_departemen FROM informasi_pelayanan)");
                while ($row = $query_departemen->fetch_assoc()) {
                  echo '<option value="' . $row['id'] . '">' . $row['nama_departemen'] . '</option>';
                }
                ?>
              </select>
            </div>
            <div class="form-group">
              <label>Alamat</label>
              <input type="text" name="alamat" class="form-control" placeholder="Alamat" required>
            </div>
            <div class="form-group">
              <label>Lantai</label>
              <input type="text" name="lantai" class="form-control" placeholder="Lantai" required>
            </div>
            <div class="form-group">
              <label>Jam Operasional</label>
              <textarea id="" name="jam_operasional" class="form-control" placeholder="Masukkan jam_operasional"></textarea>
            </div>
            <div class="form-group">
              <label>Jam Tambahan</label>
              <input type="text" name="jam_tambahan" class="form-control" placeholder="Jam Tambahan">
            </div>
            <div class="form-group">
              <label>Informasi Tutup</label>
              <input type="text" name="tutup" class="form-control" placeholder="Informasi Tutup">
            </div>
            <div class="form-group">
              <label>Gambar</label>
              <input type="file" name="gambar" class="form-control">
            </div>
          </div>
          <div class="box-footer">
            <button type="submit" name="tambah" class="btn btn-info">Tambah</button>
            <a href="?page=MyApp/data_informasi" class="btn btn-warning">Batal</a>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>