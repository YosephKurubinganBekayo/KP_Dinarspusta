<!-- Main content -->
<section class="content">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3>Laporan Jumlah Buku per Kelas</h3>
        </div>
        <!-- /.box-header -->

        <!-- Form Filter -->
        <div class="box-body">
            <form method="GET" action="">
                <input type="hidden" name="page" value="laporan_inventaris_buku">
                <div class="form-group">
                    <label for="bulan">Bulan (1-12)</label>
                    <input type="number" name="bulan" class="form-control" placeholder="Bulan (1-12)" value="<?php echo isset($_GET['bulan']) ? $_GET['bulan'] : ''; ?>">
                </div>
                <div class="form-group">
                    <label for="tahun">Tahun</label>
                    <input type="number" name="tahun" class="form-control" placeholder="Tahun" value="<?php echo isset($_GET['tahun']) ? $_GET['tahun'] : ''; ?>">
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
                    <input type="submit" value="Filter" class="btn btn-primary">
                    <a href="?page=laporan_inventaris_buku" class="btn btn-warning">Hapus Filter</a>
                </div>
            </form>
        </div>

        <div class="box-body">
            <div class="table-responsive">
                <table id="tabel_kelola_laporan" class="table table-bordered table-striped">
                    <thead>
                        <?php
                        // Mendapatkan nilai filter dari form pencarian
                        $bulan = isset($_GET['bulan']) ? $_GET['bulan'] : '';
                        $tahun = isset($_GET['tahun']) ? $_GET['tahun'] : '';
                        $jenis = isset($_GET['jenis']) ? $_GET['jenis'] : '';

                        // Membuat query dasar
                        $sql = "SELECT no_kelas, COUNT(id_buku) AS jumlah_buku FROM buku WHERE 1=1";

                        // Menambahkan kondisi filter berdasarkan input pengguna
                        if (!empty($bulan)) {
                            $sql .= " AND MONTH(tanggal_terima) = $bulan";
                        }
                        if (!empty($tahun)) {
                            $sql .= " AND YEAR(tanggal_terima) = $tahun";
                        }
                        if (!empty($jenis)) {
                            $sql .= " AND jenis = '$jenis'";
                        }

                        $sql .= " GROUP BY no_kelas ORDER BY no_kelas";

                        // Cek apakah query berhasil
                        $query = mysqli_query($koneksi, $sql);
                        if (!$query) {
                            die("Query gagal: " . mysqli_error($koneksi));
                        }

                        $total_jumlah_buku = 0;
                        while ($data = mysqli_fetch_array($query, MYSQLI_ASSOC)) {
                            $total_jumlah_buku += $data['jumlah_buku'];
                        }
                        ?>
                        <tr>
                            <th>No</th>
                            <th>No Kelas</th>
                            <th>Jumlah Buku (Total=<?php echo $total_jumlah_buku; ?>)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        // Jalankan query untuk menghitung jumlah buku per kelas
                        $query = mysqli_query($koneksi, $sql);
                        if (!$query) {
                            die("Query gagal: " . mysqli_error($koneksi));
                        }

                        // Inisialisasi variabel
                        $no = 0;

                        // Loop untuk menampilkan jumlah buku per kelas
                        while ($data = mysqli_fetch_array($query, MYSQLI_ASSOC)) {
                            $no++;
                            echo '<tr>
                                <td>' . $no . '</td>
                                <td>' . $data['no_kelas'] . '</td>
                                <td>' . $data['jumlah_buku'] . '</td>
                            </tr>';
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
