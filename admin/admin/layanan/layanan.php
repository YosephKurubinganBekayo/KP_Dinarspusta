<!-- Main content -->

<section class="content">
  <div class="box box-primary">
    <div class="box-header with-border">
      <h1>
        Data layanan
      </h1>
    </div>
    <div class="box-header with-border">
      <!-- Tombol Tambah Data -->
      <a href="?page=MyApp/add_layanan" title="Tambah Data" class="btn btn-primary">
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
              <th>Nama Layanan</th>
              <th>Nama Departemen</th>
              <th>Deskripsi layanan</th>
              <!-- <th>Penulis</th> -->
              <!-- <th>Deskripsi</th> -->
            </tr>
          </thead>
          <tbody>

            <?php
            $no = 1;
            $sql = $koneksi->query("SELECT l.`id`,d.`nama_departemen`,l.`nama_layanan`,l.`deskripsi`,l.`gambar`FROM`layanan` l INNER JOIN`departemen` d ON l.`id_departemen` = d.`id` ORDER BY id_departemen");
            while ($data = $sql->fetch_assoc()) {
            ?>

              <tr>
                <td>
                  <?php echo $no++; ?>
                </td>
                <td>
                  <a class="fancybox" data-fancybox="gallery" href="../img/<?php echo $data['gambar']; ?>">
                    <img src="../img/<?php echo $data['gambar']; ?>" alt="Gambar" style="width: 100px; height: auto;">
                  </a>
                </td>
                <td>
                  <?php echo $data['nama_layanan']; ?>
                </td>
                <td>
                  <?php echo $data['nama_departemen']; ?>
                </td>
                <td>
                  <?php echo $data['deskripsi']; ?>
                </td>
                <td>
                  <a href="?page=MyApp/edit_layanan&kode=<?php echo $data['id']; ?>" title="Ubah Data" class="btn btn-success">
                    <i class="glyphicon glyphicon-edit"></i>
                  </a>
                  <a href="?page=MyApp/del_layanan&kode=<?php echo $data['id']; ?>" onclick="return confirm('Yakin Hapus Data Ini ?')" title="Hapus" class="btn btn-danger">
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