<!-- Main content -->
<section class="content">
  <div class="box box-primary">
    <div class="box-header with-border">
      <h1>
        Informasi Pelayanan
      </h1>
    </div>
    <div class="box-header with-border">
      <a href="?page=MyApp/add_informasi" title="Tambah Data" class="btn btn-primary">
        <i class="glyphicon glyphicon-plus"></i> Tambah Data</a>
      <!-- <a href="?page=MyApp/print_allagt" title="Print" class="btn btn-success" stlye="color : green;">
                <i class="glyphicon glyphicon-print"></i>Print</a> -->
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <div class="table-responsive">
        <table id="example1" class="table table-bordered table-striped">
          <thead>
            <tr>
              <th>No</th>
              <th>Nama Departemen</th>
              <th>Gambar</th>
              <th>Alamat </th>
              <th>Lantai </th>
              <th>Jam Operasional</th>
              <th>Jam Tambahan</th>
              <th>Informasi Tutup</th>
            </tr>
          </thead>
          <tbody>

            <?php
            $no = 1;
            $sql = $koneksi->query("SELECT i.*, d.nama_departemen FROM informasi_pelayanan i JOIN departemen d ON i.id_departemen = d.id");
            while ($data = $sql->fetch_assoc()) {
            ?>
              <tr>
                <td>
                  <?php echo $no++; ?>
                </td>
                <td>
                  <?php echo $data['nama_departemen']; ?>
                </td>
                <td>
                  <a class="fancybox" data-fancybox="gallery" href="../img/<?php echo $data['gambar']; ?>">
                    <img src="../img/<?php echo $data['gambar']; ?>" alt="Gambar" style="width: 100px; height: auto;">
                  </a>
                </td>
                <td>
                  <?php echo $data['alamat']; ?>
                </td>
                <td>
                  <?php echo $data['lantai']; ?>
                </td>
                <td>
                  <?php echo $data['jam_operasional']; ?>
                </td>
                <td>
                  <?php echo $data['jam_tambahan']; ?>
                </td>
                <td>
                  <?php echo $data['tutup']; ?>
                </td>
                <td>
                  <a href="?page=MyApp/edit_informasi&kode=<?php echo $data['id']; ?>" title="Ubah Data" class="btn btn-success">
                    <i class="glyphicon glyphicon-edit"></i>
                  </a>
                  <a href="?page=MyApp/del_informasi&kode=<?php echo $data['id']; ?>" onclick="return confirm('Yakin Hapus Data Ini ?')" title="Hapus" class="btn btn-danger">
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