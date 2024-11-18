<div class="box box-primary">
    <div class="box-body">
        <h3 class="box-header">
            Kelola Inventaris Buku
        </h3>
    </div>
    <div class="box box-primary">
        <div class="box-header with-border">
            <!-- Tombol Tambah Data -->
            <a href="?page=MyApp/add_buku" title="Tambah Data" class="btn btn-primary">
                <i class="glyphicon glyphicon-plus"></i> Tambah Data
            </a>

            <!-- Tombol untuk membuka modal filter -->
            <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#filterModal">
                Filter Data
            </button>
            <!-- Tombol Hapus Filter -->
            <a href="?page=MyApp/data_buku" class="btn btn-warning">
                Hapus Filter
            </a>
        </div>

        <!-- Modal Filter Data -->
        <div class="modal fade" id="filterModal" tabindex="-1" role="dialog" aria-labelledby="filterModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="filterModalLabel">Filter Data</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form method="GET" action="">
                        <input type="hidden" name="page" value="MyApp/data_buku">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="bulan">Bulan (1-12)</label>
                                <input type="number" name="bulan" class="form-control" placeholder="Bulan (1-12)" value="<?php echo isset($_GET['bulan']) ? $_GET['bulan'] : ''; ?>">
                            </div>
                            <div class="form-group">
                                <label for="tahun">Tahun</label>
                                <input type="number" name="tahun" class="form-control" placeholder="Tahun" value="<?php echo isset($_GET['tahun']) ? $_GET['tahun'] : ''; ?>">
                            </div>
                            <div class="form-group">
                                <label for="no_kelas">No Kelas</label>
                                <select name="no_kelas" class="form-control">
                                    <option value="">Pilih Rentang No Kelas</option>
                                    <option value="0-99" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '0-99') ? 'selected' : ''; ?>>0-99 Karya Umum</option>
                                    <option value="100-199" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '100-199') ? 'selected' : ''; ?>>100-199 Filsafat & Psikologi</option>
                                    <option value="200-299" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '200-299') ? 'selected' : ''; ?>>200-299 Agama</option>
                                    <option value="300-399" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '300-399') ? 'selected' : ''; ?>>300-399 Ilmu Sosial</option>
                                    <option value="400-499" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '400-499') ? 'selected' : ''; ?>>400-499 Bahasa</option>
                                    <option value="500-599" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '500-599') ? 'selected' : ''; ?>>500-599 Ilmu-Ilmu Murni</option>
                                    <option value="600-699" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '600-699') ? 'selected' : ''; ?>>600-699 Ilmu-Ilmu Terapan/Teknologi</option>
                                    <option value="700-799" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '700-799') ? 'selected' : ''; ?>>700-799 Kesenian & Olahraga</option>
                                    <option value="800-899" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '800-899') ? 'selected' : ''; ?>>800-899 Kesusasteraan</option>
                                    <option value="900-999" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == '900-999') ? 'selected' : ''; ?>>900-999 Sejarah & Geografi</option>
                                    <option value="di luar rentang" <?php echo (isset($_GET['no_kelas']) && $_GET['no_kelas'] == 'di luar rentang') ? 'selected' : ''; ?>>Di Luar Rentang</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="jenis">Pilih Jenis</label>
                                <select name="jenis" class="form-control">
                                    <option value="">Pilih Jenis</option>
                                    <option value="F" <?php echo (isset($_GET['jenis']) && $_GET['jenis'] == 'F') ? 'selected' : ''; ?>>F</option>
                                    <option value="NF" <?php echo (isset($_GET['jenis']) && $_GET['jenis'] == 'NF') ? 'selected' : ''; ?>>NF</option>
                                    <option value="R" <?php echo (isset($_GET['jenis']) && $_GET['jenis'] == 'R') ? 'selected' : ''; ?>>R</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="keterangan">Keterangan</label>
                                <input type="text" name="keterangan" class="form-control" placeholder="Keterangan" value="<?php echo isset($_GET['keterangan']) ? $_GET['keterangan'] : ''; ?>">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                            <input type="submit" value="Filter" class="btn btn-primary">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- /.box-header -->
        <div class="box-body">
            <br />
            <div class="table-responsive">
                <table id="tabel_kelola_data" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>ID</th>
                            <th>Tanggal Terima</th>
                            <th>No Induk</th>
                            <th>Judul Buku</th>
                            <th>Pengarang</th>
                            <th>Penerbit</th>
                            <th>No Kelas</th>
                            <th>Eksamplar</th>
                            <th>Jenis</th>
                            <th>Keterangan</th>
                            <th>Harga</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;

                        // Mendapatkan nilai filter dari form pencarian
                        $bulan = isset($_GET['bulan']) ? $_GET['bulan'] : '';
                        $tahun = isset($_GET['tahun']) ? $_GET['tahun'] : '';
                        $no_kelas = isset($_GET['no_kelas']) ? $_GET['no_kelas'] : '';
                        $jenis = isset($_GET['jenis']) ? $_GET['jenis'] : '';
                        $keterangan = isset($_GET['keterangan']) ? $_GET['keterangan'] : '';

                        // Membuat query dasar
                        $sql = "SELECT * FROM buku WHERE 1=1";

                        // Menambahkan kondisi filter berdasarkan input pengguna
                        if (!empty($bulan)) {
                            $sql .= " AND MONTH(tanggal_terima) = $bulan";
                        }
                        if (!empty($tahun)) {
                            $sql .= " AND YEAR(tanggal_terima) = $tahun";
                        }
                        if (!empty($no_kelas)) {
                            if ($no_kelas == 'di luar rentang') {
                                // Jika no_kelas adalah "Di Luar Rentang", ambil data di luar rentang 0-999
                                $sql .= " AND (CAST(no_kelas AS UNSIGNED) < 0 OR CAST(no_kelas AS UNSIGNED) > 999)";
                            } else {
                                // Memisahkan rentang awal dan akhir
                                list($min, $max) = explode('-', $no_kelas);
                                $sql .= " AND CAST(no_kelas AS UNSIGNED) BETWEEN $min AND $max";
                            }
                        }
                        if (!empty($jenis)) {
                            $sql .= " AND jenis = '$jenis'";
                        }
                        if (!empty($keterangan)) {
                            $sql .= " AND keterangan LIKE '%$keterangan%'";
                        }

                        $query = $koneksi->query($sql);

                        while ($data = $query->fetch_assoc()) {
                        ?>
                            <tr>
                                <td><?php echo $no++; ?></td>
                                <td><?php echo $data['id_buku']; ?></td>
                                <td><?php echo $data['tanggal_terima']; ?></td>
                                <td><?php echo $data['no_induk']; ?></td>
                                <td><?php echo $data['judul_buku']; ?></td>
                                <td><?php echo $data['pengarang']; ?></td>
                                <td><?php echo $data['penerbit']; ?></td>
                                <td><?php echo $data['no_kelas']; ?></td>
                                <td><?php echo $data['eksamplar']; ?></td>
                                <td><?php echo $data['jenis']; ?></td>
                                <td><?php echo $data['keterangan']; ?></td>
                                <td>Rp.<?php echo number_format($data['harga'], 0, ',', '.'); ?></td>
                                <td>
                                    <a href="?page=MyApp/edit_buku&kode=<?php echo $data['no_induk']; ?>" title="Ubah" class="btn btn-success">
                                        <i class="glyphicon glyphicon-edit"></i>
                                    </a>
                                    <a href="?page=MyApp/del_buku&kode=<?php echo $data['no_induk']; ?>" onclick="return confirm('Yakin Hapus Data Ini ?')" title="Hapus" class="btn btn-danger">
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
</div>