<?php
// Jika `tab` tidak disetel di URL, maka gunakan `laporan_buku` sebagai default
if (!isset($_GET['tab'])) {
    $_GET['tab'] = 'laporan_buku';
}
?>
<!-- Bootstrap Nav-Tabs -->
<section class="content">
    <div class="nav-tabs-custom">
        <ul class="nav nav-tabs">
            <li class="<?php echo ($_GET['tab'] == 'laporan_buku') ? 'active' : ''; ?>">
                <a href="#laporan_buku" data-toggle="tab" onclick="updateURL('laporan_buku')">Laporan Inventaris Buku</a>
            </li>
            <li class="<?php echo ($_GET['tab'] == 'laporan_per_kelas') ? 'active' : ''; ?>">
                <a href="#laporan_per_kelas" data-toggle="tab" onclick="updateURL('laporan_per_kelas')">Laporan Jumlah Buku per Kelas</a>
            </li>
        </ul>


        <div class="tab-content">
            <!-- Tab Kelola Inventaris Buku -->
            <div class="tab-pane <?php echo (isset($_GET['tab']) && $_GET['tab'] == 'laporan_buku') ? 'active' : ''; ?>" id="laporan_buku">
                <!-- Konten Kelola Inventaris Buku -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3>Laporan Inventaris Buku</h3>
                    </div>
                    <!-- <div class="box box-primary"> -->
                    <div class="box-header with-border">
                        <!-- Tombol untuk membuka modal filter -->
                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#filterModal">
                            Filter Data
                        </button>
                        <!-- Tombol Hapus Filter -->
                        <a href="?page=laporan_inventaris_buku&tab=laporan_buku" class="btn btn-warning">
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
                                    <input type="hidden" name="page" value="laporan_inventaris_buku">
                                    <input type="hidden" name="tab" value="laporan_buku">
                                    <div class="modal-body">
                                        <!-- Form Fields -->
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
                        <p>Simpan Data</p>
                        <div class="table-responsive">
                            <table id="tabel_laporan_inventaris_buku" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>No</th>
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
                                            <td><?php echo $data['tanggal_terima']; ?></td>
                                            <td><?php echo $data['no_induk']; ?></td>
                                            <td><?php echo $data['judul_buku']; ?></td>
                                            <td><?php echo $data['pengarang']; ?></td>
                                            <td><?php echo $data['penerbit']; ?></td>
                                            <td><?php echo $data['no_kelas']; ?></td>
                                            <td><?php echo $data['eksamplar']; ?></td>
                                            <td><?php echo $data['jenis']; ?></td>
                                            <td><?php echo $data['keterangan']; ?></td>
                                            <td><?php echo $data['harga']; ?></td>
                                        </tr>
                                    <?php
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- </div> -->
                </div>
            </div>

            <!-- Tab Laporan Jumlah Buku per Kelas -->
            <div class="tab-pane <?php echo (isset($_GET['tab']) && $_GET['tab'] == 'laporan_per_kelas') ? 'active' : ''; ?>" id="laporan_per_kelas">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3>Laporan Jumlah Buku per Kelas</h3>
                    </div>
                    <div class="box-header with-border">
                        <!-- Tombol Filter Data -->
                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#filterModal_kelas">
                            Filter Data
                        </button>
                        <a href="?page=laporan_inventaris_buku&tab=laporan_per_kelas" class="btn btn-warning">Hapus Filter</a>
                    </div>

                    <!-- Modal Filter -->
                    <div class="modal fade" id="filterModal_kelas" tabindex="-1" role="dialog" aria-labelledby="filterModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="filterModalLabel">Filter Laporan Jumlah Buku per Kelas</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form method="GET" action="">
                                    <input type="hidden" name="page" value="laporan_inventaris_buku">
                                    <input type="hidden" name="tab" value="laporan_per_kelas">
                                    <div class="modal-body">
                                        <!-- Form Fields -->
                                        <div class="form-group">
                                            <label for="bulan">Bulan (1-12)</label>
                                            <input type="number" name="bulan1" class="form-control" placeholder="Bulan (1-12)" value="<?php echo isset($_GET['bulan']) ? $_GET['bulan'] : ''; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="tahun">Tahun</label>
                                            <input type="number" name="tahun1" class="form-control" placeholder="Tahun" value="<?php echo isset($_GET['tahun']) ? $_GET['tahun'] : ''; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="jenis">Pilih Jenis</label>
                                            <select name="jenis1" class="form-control">
                                                <option value="">Pilih Jenis</option>
                                                <option value="F" <?php echo (isset($_GET['jenis']) && $_GET['jenis'] == 'F') ? 'selected' : ''; ?>>F</option>
                                                <option value="NF" <?php echo (isset($_GET['jenis']) && $_GET['jenis'] == 'NF') ? 'selected' : ''; ?>>NF</option>
                                                <option value="R" <?php echo (isset($_GET['jenis']) && $_GET['jenis'] == 'R') ? 'selected' : ''; ?>>R</option>
                                            </select>
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

                    <div class="box-body">
                        <p>Simpan Data</p>
                        <div class="table-responsive">
                            <table id="tabel_laporan1" class="table table-bordered table-striped">
                                <thead>
                                    <?php
                                    // Mendapatkan nilai filter dari form pencarian
                                    $bulan = isset($_GET['bulan1']) ? $_GET['bulan1'] : '';
                                    $tahun = isset($_GET['tahun1']) ? $_GET['tahun1'] : '';
                                    $jenis = isset($_GET['jenis1']) ? $_GET['jenis1'] : '';

                                    // Membuat query dasar dengan konversi tipe data untuk no_kelas
                                    $sql = "SELECT 
                            CASE 
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 0 AND 99 THEN '000-Karya Umum'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 100 AND 199 THEN '100-Filsafat & Psikologi'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 200 AND 299 THEN '200-Agama'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 300 AND 399 THEN '300-Ilmu Sosial'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 400 AND 499 THEN '400-Bahasa'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 500 AND 599 THEN '500-Ilmu-Ilmu Murni'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 600 AND 699 THEN '600-Ilmu-Ilmu Terapan/Teknologi'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 700 AND 799 THEN '700-Kesenian & Olahraga' 
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 800 AND 899 THEN '800-Kesusasteraan'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 900 AND 999 THEN '900-Sejarah & Geografi'
                            END AS range_kelas,
                            COUNT(id_buku) AS jumlah_buku 
                        FROM buku 
                        WHERE 1=1";

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

                                    // Menambahkan pengelompokan dan pengurutan berdasarkan rentang kelas
                                    $sql .= " GROUP BY 
                            CASE 
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 0 AND 99 THEN '0-99'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 100 AND 199 THEN '100-199'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 200 AND 299 THEN '200-299'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 300 AND 399 THEN '300-399'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 400 AND 499 THEN '400-499'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 500 AND 599 THEN '500-599'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 600 AND 699 THEN '600-699'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 700 AND 799 THEN '700-799'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 800 AND 899 THEN '800-899'
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 900 AND 999 THEN '900-999'
                            END 
                        ORDER BY 
                            CASE 
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 0 AND 99 THEN 1
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 100 AND 199 THEN 2
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 200 AND 299 THEN 3
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 300 AND 399 THEN 4
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 400 AND 499 THEN 5
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 500 AND 599 THEN 6
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 600 AND 699 THEN 7
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 700 AND 799 THEN 8
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 800 AND 899 THEN 9
                                WHEN CAST(no_kelas AS DECIMAL) BETWEEN 900 AND 999 THEN 10
                            END";

                                    // Eksekusi query
                                    $query = mysqli_query($koneksi, $sql);
                                    if (!$query) {
                                        die("Query gagal: " . mysqli_error($koneksi));
                                    }

                                    // Menghitung total jumlah buku
                                    $total_jumlah_buku = 0;
                                    while ($data = mysqli_fetch_array($query, MYSQLI_ASSOC)) {
                                        $total_jumlah_buku += $data['jumlah_buku'];
                                    }

                                    // Reset pointer hasil query untuk pengulangan berikutnya
                                    mysqli_data_seek($query, 0);
                                    ?>
                                    <tr>
                                        <th>No</th>
                                        <th>Kelas</th>
                                        <th>Jumlah Buku (Total=<?php echo $total_jumlah_buku; ?>)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    // Inisialisasi variabel untuk nomor baris
                                    $no = 0;

                                    // Loop untuk menampilkan data buku per rentang kelas
                                    while ($data = mysqli_fetch_array($query, MYSQLI_ASSOC)) {
                                        $no++;
                                        echo '<tr>
                        <td>' . $no . '</td>
                        <td>' . $data['range_kelas'] . '</td>
                        <td>' . $data['jumlah_buku'] . '</td>
                    </tr>';
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<script>
    function updateURL(tabName) {
        // Update URL with only 'page' and 'tab' as query parameters
        const url = new URL(window.location);

        // Simpan 'page' dan 'tab' saja, hapus parameter lain
        url.searchParams.forEach((value, key) => {
            if (key !== 'page' && key !== 'tab') {
                url.searchParams.delete(key);
            }
        });

        // Set parameter 'tab' sesuai tabName
        url.searchParams.set('tab', tabName);
        window.history.pushState({}, '', url);
    }

    // Set tab aktif berdasarkan URL parameter pada page load
    document.addEventListener("DOMContentLoaded", function() {
        const urlParams = new URLSearchParams(window.location.search);
        const activeTab = urlParams.get('tab');

        if (activeTab) {
            document.querySelector(`.nav-tabs a[href="#${activeTab}"]`).click();
        }
    });

    // Tambahkan event listener untuk meng-update URL saat tab diklik
    document.querySelectorAll('.nav-tabs a').forEach(tab => {
        tab.addEventListener('click', function(event) {
            const tabName = this.getAttribute('href').substring(1); // Ambil nama tab dari href
            updateURL(tabName); // Panggil fungsi untuk update URL
        });
    });
</script>