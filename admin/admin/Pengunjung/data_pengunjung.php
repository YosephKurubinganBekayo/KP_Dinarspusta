<section class="content-header" style="text-align: center;">
  <h1>
    Data Pengunjung
  </h1>
  <ol class="breadcrumb">
    <li>
      <a href="index.php">
        <i class="fa fa-home"></i>
        <b>Si Perpustakaan</b>
      </a>
    </li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
  <div class="box box-primary">
    <div class="box-header with-border">
      <a href="?page=MyApp/add_kunjungan" title="Tambah Data" class="btn btn-primary">
        <i class="glyphicon glyphicon-plus"></i> Tambah Data</a>

    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <div class="table-responsive">
        <table id="example1" class="table table-bordered table-striped">
          <thead>
            <tr>
              <th>No</th>
              <th>NIK</th>
              <th>Nama</th>
              <th>Jenis Kelamin</th>
              <th>Alamat</th>
              <th>No HP</th>
              <th>Pekerjaan</th>
              <th>Instansi</th>
              <th>Kelola</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $no = 1;
            // Mengambil data pengunjung dari tabel pengunjung
            $sql = $koneksi->query("SELECT * from pengunjung");
            while ($data = $sql->fetch_assoc()) {
            ?>
              <tr>
                <td><?php echo $no++; ?></td>
                <td><?php echo $data['NIK']; ?></td>
                <td><?php echo $data['nama']; ?></td>
                <td><?php echo $data['jenis_kelamin']; ?></td>
                <td><?php echo $data['alamat']; ?></td>
                <td><?php echo $data['no_hp']; ?></td>
                <td><?php echo $data['pekerjaan']; ?></td>
                <td><?php echo $data['asal_instansi']; ?></td>
                <td>
                  <a href="?page=MyApp/edit_pengunjung&nik=<?php echo $data['NIK']; ?>" title="Ubah Data" class="btn btn-success">
                    <i class="glyphicon glyphicon-edit"></i>
                  </a>
                  <a href="?page=MyApp/del_pengunjung&nik=<?php echo $data['NIK']; ?>" onclick="return confirm('Yakin Hapus Data Ini ?')" title="Hapus" class="btn btn-danger">
                    <i class="glyphicon glyphicon-trash"></i>
                  </a>
                  <?php
                  // Cek apakah NIK sudah ada di tabel anggota
                  $cek_anggota = $koneksi->query("SELECT * FROM tb_anggota WHERE nik = '" . $data['NIK'] . "'");
                  if ($cek_anggota->num_rows == 0) {
                    // Jika NIK belum ada di anggota, tampilkan tombol "Jadikan Anggota"
                  ?>
                    <a href="?page=MyApp/add_agt&nik=<?php echo $data['NIK']; ?>" class="btn btn-info" title="Jadikan Anggota">
                      <i class="glyphicon glyphicon-user"></i> Jadikan Anggota
                    </a>
                  <?php
                  }
                  ?>
                 
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
</section>