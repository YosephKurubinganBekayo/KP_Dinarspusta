<section class="content-header" style="text-align: center;">
    <h1>
        Data Pegawai
    </h1>

</section>
<!-- Main content -->
<section class="content">
    <div class="box box-primary">
        <div class="box-header with-border">
            <a href="?page=MyApp/add_pegawai" title="Tambah Data" class="btn btn-primary">
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
                            <th>Id Pegawai</th>
                            <th>Jenis Kelamin</th>
                            <th>Tanggal Lahir</th>
                            <th>Alamat </th>
                            <th>No Telepon</th>
                            <th>Email</th>
                            <th>Posisi</th>
                            <th>Departemen</th>
                            <th>Tanggal Masuk</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php
                        $no = 1;
                        $sql = $koneksi->query("SELECT * from tb_pegawai");
                        while ($data = $sql->fetch_assoc()) {
                        ?>

                            <tr>
                                <td>
                                    <?php echo $no++; ?>
                                </td>
                                <td>
                                    <?php echo $data['id_pegawai']; ?>
                                </td>
                                <td>
                                    <?php echo $data['nama']; ?>
                                </td>
                                <td>
                                    <?php echo $data['jenis_kelamin']; ?>
                                </td>
                                <td>
                                    <?php echo $data['tanggal_lahir']; ?>
                                </td>
                                <td>
                                    <?php echo $data['alamat']; ?>
                                </td>
                                <td>
                                    <?php echo $data['no_telepon']; ?>
                                </td>
                                <td>
                                    <?php echo $data['email']; ?>
                                </td>
                                <td>
                                    <?php echo $data['posisi']; ?>
                                </td>
                                <td>
                                    <?php echo $data['departemen']; ?>
                                </td>
                                <td>
                                    <?php echo $data['tanggal_masuk']; ?>
                                </td>

                                <td>
                                    <a href="?page=MyApp/edit_pegawai&kode=<?php echo $data['id_pegawai']; ?>" title="Ubah Data"
                                        class="btn btn-success">
                                        <i class="glyphicon glyphicon-edit"></i>
                                    </a>

                                    <a href="?page=MyApp/del_pegawai&kode=<?php echo $data['id_pegawai']; ?>" onclick="return confirm('Yakin Hapus Data Ini ?')"
                                        title="Hapus" class="btn btn-danger">
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