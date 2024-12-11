<!-- Main content -->

<section class="content">
  <div class="box box-primary">
    <div class="box-header with-border">
      <h1>
        Tentang Kami
      </h1>
    </div>
    <div class="box-header with-border">
      <!-- Tombol Tambah Data -->
      <a href="?page=MyApp/add_tentang_kami" title="Tambah Data" class="btn btn-primary">
        <i class="glyphicon glyphicon-plus"></i> Tambah Data
      </a>
    </div>
    <div class="box-body">
      <div class="table-responsive">
        <table id="example1" class="table table-bordered table-striped">
          <thead>
            <tr>
              <th>No</th>
              <th>gambar</th>
              <th>Judul</th>
              <th>Detail</th>
            </tr>
          </thead>
          <tbody>

            <?php
            $no = 1;
            $sql = $koneksi->query("SELECT * from tbl_aboutus");
            while ($data = $sql->fetch_assoc()) {
            ?>

              <tr>
                <td>
                  <?php echo $no++; ?>
                </td>
                <td>
                  <a class="fancybox" data-fancybox="gallery" href="../img/<?php echo $data['pict_aboutus']; ?>">
                    <img src="../img/<?php echo $data['pict_aboutus']; ?>" alt="Gambar" style="width: 100px; height: auto;">
                  </a>
                </td>
                <td>
                  <?php echo $data['title_aboutus']; ?>
                </td>
                <td>
                  <?php echo $data['detail_aboutus']; ?>
                </td>
                <td>
                  <a href="?page=MyApp/edit_tentang_kami&kode=<?php echo $data['id_aboutus']; ?>" title="Ubah Data" class="btn btn-success">
                    <i class="glyphicon glyphicon-edit"></i>
                  </a>
                  <a href="?page=MyApp/del_tentang_kami&kode=<?php echo $data['id_aboutus']; ?>" onclick="return confirm('Yakin Hapus Data Ini ?')" title="Hapus" class="btn btn-danger">
                    <i class="glyphicon glyphicon-trash"></i>
                  </a>
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