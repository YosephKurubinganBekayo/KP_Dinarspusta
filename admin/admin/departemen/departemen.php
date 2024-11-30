<!-- Main content -->
<section class="content">
  <div class="box box-primary">
    <div class="box-header with-border">
      <h1>
        Data Departemen
      </h1>
    </div>
    <div class="box-header with-border">
      <a href="?page=MyApp/add_departemen" title="Tambah Data" class="btn btn-primary">
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

            </tr>
          </thead>
          <tbody>

            <?php
            $no = 1;
            $sql = $koneksi->query("SELECT * FROM departemen ");
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
                  <a href="?page=MyApp/edit_departemen&kode=<?php echo $data['id']; ?>" title="Ubah Data" class="btn btn-success">
                    <i class="glyphicon glyphicon-edit"></i>
                  </a>
                  <a href="?page=MyApp/del_departemen&kode=<?php echo $data['id']; ?>" onclick="return confirm('Yakin Hapus Data Ini ?')" title="Hapus" class="btn btn-danger">
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