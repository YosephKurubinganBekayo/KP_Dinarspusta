<section class="content">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h1>Data Pesan</h1>
        </div>
        <div class="box-header with-border">
            <!-- Tombol Tambah Data -->
        </div>
        <div class="box-body">
            <div class="table-responsive">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>Email</th>
                            <th>Subjek</th>
                            <th>Pesan</th>
                            <th>Tanggal Terima</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php
                        $no = 1;
                        // Query untuk mengambil data dari tabel tbl_inbox
                        $sql = $koneksi->query("SELECT * FROM tbl_inbox ORDER BY date_receive_inbox DESC");
                        while ($data = $sql->fetch_assoc()) {
                        ?>
                            <tr>
                                <td><?php echo $no++; ?></td>
                                <td><?php echo htmlspecialchars($data['name_inbox']); ?></td>
                                <td><?php echo htmlspecialchars($data['email_inbox']); ?></td>
                                <td><?php echo htmlspecialchars($data['subject_inbox']); ?></td>
                                <td><?php echo nl2br(htmlspecialchars($data['message_inbox'])); ?></td>
                                <td><?php echo htmlspecialchars($data['date_receive_inbox']); ?></td>
                                <td>
                                    <a href="?page=MyApp/data_pesan_detail&kode=<?php echo $data['id_inbox']; ?>" title="Lihat Pesan" class="btn btn-info">
                                        <i class="glyphicon glyphicon-eye-open"></i>
                                    </a>
                                    <a href="?page=MyApp/del_pesan&kode=<?php echo $data['id_inbox']; ?>" onclick="return confirm('Yakin Hapus Pesan Ini?')" title="Hapus" class="btn btn-danger">
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