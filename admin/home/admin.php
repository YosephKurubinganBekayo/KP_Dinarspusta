<?php
$sql = $koneksi->query("SELECT count(id_buku) as buku from buku");
while ($data = $sql->fetch_assoc()) {
    $buku = $data['buku'];
}
?>

<?php
$sql = $koneksi->query("SELECT count(id_anggota) as agt from tb_anggota");
while ($data = $sql->fetch_assoc()) {
    $agt = $data['agt'];
}
?>

<?php
$sql = $koneksi->query("SELECT count(id_sk) as pin from tb_sirkulasi where status='PIN'");
while ($data = $sql->fetch_assoc()) {

    $pin = $data['pin'];
}
?>

<?php
$sql = $koneksi->query("SELECT count(id_sk) as kem from tb_sirkulasi where status='KEM'");
while ($data = $sql->fetch_assoc()) {

    $kem = $data['kem'];
}
?>

<?php
$sql = $koneksi->query("SELECT count(id_sk) as kem from tb_sirkulasi where status='KEM'");
while ($data = $sql->fetch_assoc()) {

    $kem = $data['kem'];
}
?>
<?php
$sql = $koneksi->query("SELECT count(NIK) as pengunjung from pengunjung ");
while ($data = $sql->fetch_assoc()) {

    $pengunjung = $data['pengunjung'];
}
?>
<?php
$sql = $koneksi->query(" SELECT COUNT(*) as kunjungan 
FROM (
    SELECT pengunjung_NIK, tanggal_baca
    FROM pengunjung_buku
    GROUP BY pengunjung_NIK, tanggal_baca
) as kunjungan_unik");
while ($data = $sql->fetch_assoc()) {

    $kunjungan = $data['kunjungan'];
}
?>


<!-- Content Header (Page header) -->


<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="box box-primary">
        <div class="box-body">

            <h1 class="box-header with-border">
                Dashboard Administrator
            </h1>

            <div class="row ">
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-blue">
                        <div class="inner">
                            <h4>
                                <?= $buku; ?>
                            </h4>

                            <p>Buku</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="?page=MyApp/data_buku" class="small-box-footer">More info
                            <i class="fa fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h4>
                                <?= $agt; ?>
                            </h4>

                            <p>Anggota</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <a href="?page=MyApp/data_agt" class="small-box-footer">More info
                            <i class="fa fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h4>
                                <?= $pin; ?>
                            </h4>

                            <p>Sirkulasi yang sedang berjalan</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="?page=data_sirkul" class="small-box-footer">More info
                            <i class="fa fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h4>
                                <?= $kem; ?>
                            </h4>

                            <p>Laporan Sirkulasi</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="?page=laporan_sirkulasi" class="small-box-footer">More info
                            <i class="fa fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h4>
                                <?= $pengunjung; ?>
                            </h4>

                            <p>Pengunjung</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person"></i>
                        </div>
                        <a href="?page=MyApp/data_kunjungan" class="small-box-footer">More info
                            <i class="fa fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h4>
                                <?= $kunjungan; ?>
                            </h4>

                            <p>Total Kunjungan</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person"></i>
                        </div>
                        <a href="?page=MyApp/data_kunjungan" class="small-box-footer">More info
                            <i class="fa fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>
            </div>
            <?php
            // Mendapatkan nilai filter dari input GET
            $bulanFilter = isset($_GET['bulan1']) ? $_GET['bulan1'] : '';
            $tahunFilter = isset($_GET['tahun1']) ? $_GET['tahun1'] : '';
            $jenisFilter = isset($_GET['jenis1']) ? $_GET['jenis1'] : '';

            // Membuat query SQL dengan kondisi filter
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

            // Menambahkan kondisi filter jika ada
            if (!empty($bulanFilter)) {
                $sql .= " AND MONTH(tanggal) = '$bulanFilter'";
            }
            if (!empty($tahunFilter)) {
                $sql .= " AND YEAR(tanggal) = '$tahunFilter'";
            }
            if (!empty($jenisFilter)) {
                $sql .= " AND jenis = '$jenisFilter'";
            }

            $sql .= " GROUP BY range_kelas ORDER BY CAST(no_kelas AS DECIMAL)";

            // Eksekusi query
            $query = mysqli_query($koneksi, $sql);
            if (!$query) {
                die("Query gagal: " . mysqli_error($koneksi));
            }

            // Mengumpulkan data untuk tabel dan grafik
            $kelasData = [];
            $jumlahData = [];
            $total_jumlah_buku = 0;

            while ($data = mysqli_fetch_array($query, MYSQLI_ASSOC)) {
                $kelasData[] = $data['range_kelas'];
                $jumlahData[] = $data['jumlah_buku'];
                $total_jumlah_buku += $data['jumlah_buku'];
            }
            ?>

            <!-- Tombol Filter dan Hapus Filter -->
            <!-- <div class="container">
                <div class="row">
                    <div class="col-md-12 text-right mb-3">
                        <button class="btn btn-primary" data-toggle="modal" data-target="#filterModal_kelas">Filter</button>
                        <?php if ($bulanFilter || $tahunFilter || $jenisFilter) : ?>
                            <a href="index.php?page=admin" class="btn btn-danger">Hapus Filter</a>
                        <?php endif; ?>
                    </div>
                </div>
            </div> -->

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
                            <input type="hidden" name="page" value="admin">
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="bulan">Bulan (1-12)</label>
                                    <input type="number" name="bulan1" class="form-control" placeholder="Bulan (1-12)" value="<?php echo $bulanFilter; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="tahun">Tahun</label>
                                    <input type="number" name="tahun1" class="form-control" placeholder="Tahun" value="<?php echo $tahunFilter; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="jenis">Pilih Jenis</label>
                                    <select name="jenis1" class="form-control">
                                        <option value="">Pilih Jenis</option>
                                        <option value="F" <?php echo ($jenisFilter == 'F') ? 'selected' : ''; ?>>F</option>
                                        <option value="NF" <?php echo ($jenisFilter == 'NF') ? 'selected' : ''; ?>>NF</option>
                                        <option value="R" <?php echo ($jenisFilter == 'R') ? 'selected' : ''; ?>>R</option>
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

            <!-- Tempatkan canvas untuk grafik Chart.js -->


            <!-- Script untuk grafik Chart.js -->
            <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>



        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="text-center">Grafik Inventaris Buku</h3>
                        <div class="text-right mb-3" style="padding: 20px;">
                            <button class="btn btn-primary" data-toggle="modal" data-target="#filterModal_kelas">Filter Data</button>
                            <?php if ($bulanFilter || $tahunFilter || $jenisFilter) : ?>
                                <a href="index.php?page=admin" class="btn btn-danger">Hapus Filter</a>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="box-body">
                        <canvas id="barChart" width="400" height="200"></canvas>
                    </div>
                </div>
            </div>
            <script>
                const kelasData = <?php echo json_encode($kelasData); ?>;
                const jumlahData = <?php echo json_encode($jumlahData); ?>;

                const ctx = document.getElementById('barChart').getContext('2d');
                const barChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: kelasData,
                        datasets: [{
                            label: 'Jumlah Buku',
                            data: jumlahData,
                            backgroundColor: [
                                '#4e73df', '#4e73df', '#4e73df', '#4e73df', '#4e73df',
                                '#4e73df', '#4e73df', '#4e73df', '#4e73df', '#4e73df'
                            ],
                            borderColor: '#2e59d9',
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            x: {
                                ticks: {
                                    display: false // Menyembunyikan label di sumbu X
                                },
                                grid: {
                                    display: false // Menyembunyikan garis grid pada sumbu X
                                }
                            },
                            y: {
                                beginAtZero: true
                            }
                        },
                        plugins: {
                            legend: {
                                display: true,
                                position: 'top'
                            },
                            tooltip: {
                                enabled: true
                            }
                        }
                    }
                });
            </script>
            <div class="col-md-6 ">
                <div class="box box-info h-100">
                    <div class="box-header with-border">
                        <h3 class="box-title">Grafik Pengunjung Teraktif</h3>
                        <div class="text-right mb-3" style="padding: 20px;">
                            <button class="btn btn-primary" data-toggle="modal" data-target="#filterModal_kelas">Filter Data</button>
                            <?php if ($bulanFilter || $tahunFilter || $jenisFilter) : ?>
                                <a href="index.php?page=admin" class="btn btn-danger">Hapus Filter</a>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="box-body">
                        <canvas id="secondChart" width="400" height="200"></canvas>
                    </div>
                </div>
            </div>
            <?php
            $sql = $koneksi->query("
        SELECT p.nama, pb.pengunjung_NIK, COUNT(*) as total_kunjungan FROM ( SELECT pengunjung_NIK, tanggal_baca FROM pengunjung_buku GROUP BY pengunjung_NIK, tanggal_baca ) as pb JOIN pengunjung p ON pb.pengunjung_NIK = p.NIK GROUP BY pb.pengunjung_NIK, p.nama ORDER BY total_kunjungan DESC LIMIT 10;
    ");


            $data_pengunjung = [];
            while ($row = $sql->fetch_assoc()) {
                $data_pengunjung[] = $row;
            }
            ?>
            <script>
                // Data dari PHP ke JavaScript
                const pengunjungData = <?php echo json_encode($data_pengunjung); ?>;

                // Ekstrak data untuk Chart.js
                const labels = pengunjungData.map(data => data.nama);
                const kunjungan = pengunjungData.map(data => data.total_kunjungan);

                // Inisialisasi Chart.js
                const ctxkunjungan = document.getElementById('secondChart').getContext('2d');
                const secondChart = new Chart(ctxkunjungan, {
                    type: 'bar', // Jenis chart: bar, line, dll.
                    data: {
                        labels: labels, // Nama pengunjung
                        datasets: [{
                            label: 'Jumlah Kunjungan',
                            data: kunjungan, // Total kunjungan tiap pengunjung
                            backgroundColor: 'rgba(54, 162, 235, 0.6)',
                            borderColor: 'rgba(54, 162, 235, 1)',
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: true,
                        plugins: {
                            legend: {
                                display: false
                            }
                        },
                        scales: {
                x: {
                    ticks: {
                        display: false // Menyembunyikan label di sumbu X
                    },
                    grid: {
                        display: false // Menyembunyikan garis grid pada sumbu X
                    }
                },
                y: {
                    beginAtZero: true
                }
            },
                    }
                });
            </script>

        </div>
        <div class="row">
            <!-- Grafik Buku Terpopuler -->
            <div class="col-md-6">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Grafik Buku Terpopuler</h3>
                        <div class="text-right mb-3" style="padding: 20px;">
                            <button class="btn btn-primary" data-toggle="modal" data-target="#filterModal_kelas">Filter Data</button>
                            <?php if ($bulanFilter || $tahunFilter || $jenisFilter) : ?>
                                <a href="index.php?page=admin" class="btn btn-danger">Hapus Filter</a>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="box-body">
                        <canvas id="chartBuku"></canvas>
                    </div>
                </div>
            </div>

            <!-- Grafik Anggota Teraktif -->
            <div class="col-md-6">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Grafik Anggota Teraktif</h3>
                        <div class="text-right mb-3" style="padding: 20px;">
                            <button class="btn btn-primary" data-toggle="modal" data-target="#filterModal_kelas">Filter Data</button>
                            <?php if ($bulanFilter || $tahunFilter || $jenisFilter) : ?>
                                <a href="index.php?page=admin" class="btn btn-danger">Hapus Filter</a>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="box-body">
                        <canvas id="chartAnggota"></canvas>
                    </div>
                </div>
            </div>
        </div>
</section>

<script>
    // Data Buku Terpopuler
    <?php
    $labelsBuku = [];
    $dataBuku = [];
    $query_buku_populer = $koneksi->query("
        SELECT b.judul_buku, COUNT(s.id_buku) as jumlah_peminjaman
        FROM buku b
        JOIN log_pinjam s ON b.no_induk = s.id_buku
        GROUP BY s.id_buku
        ORDER BY jumlah_peminjaman DESC
        LIMIT 10
    ");
    while ($row = $query_buku_populer->fetch_assoc()) {
        $labelsBuku[] = $row['judul_buku'];
        $dataBuku[] = $row['jumlah_peminjaman'];
    }
    ?>
    const labelsBuku = <?= json_encode($labelsBuku); ?>;
    const dataBuku = <?= json_encode($dataBuku); ?>;

    // Data Anggota Teraktif
    <?php
    $labelsAnggota = [];
    $dataAnggota = [];
    $query_anggota_aktif = $koneksi->query("
        SELECT a.nama, COUNT(s.id_anggota) as jumlah_peminjaman
        FROM tb_anggota a
        JOIN log_pinjam s ON a.id_anggota = s.id_anggota
        GROUP BY s.id_anggota
        ORDER BY jumlah_peminjaman DESC
        LIMIT 10
    ");
    while ($row = $query_anggota_aktif->fetch_assoc()) {
        $labelsAnggota[] = $row['nama'];
        $dataAnggota[] = $row['jumlah_peminjaman'];
    }
    ?>
    const labelsAnggota = <?= json_encode($labelsAnggota); ?>;
    const dataAnggota = <?= json_encode($dataAnggota); ?>;

    // Chart Buku Terpopuler
    const ctxBuku = document.getElementById('chartBuku').getContext('2d');
    new Chart(ctxBuku, {
        type: 'bar',
        data: {
            labels: labelsBuku,
            datasets: [{
                label: 'Jumlah Peminjaman',
                data: dataBuku,
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                },
            },
            scales: {
                x: {
                    ticks: {
                        display: false // Menyembunyikan label di sumbu X
                    },
                    grid: {
                        display: false // Menyembunyikan garis grid pada sumbu X
                    }
                },
                y: {
                    beginAtZero: true
                }
            },
        }
    });

    // Chart Anggota Teraktif
    const ctxAnggota = document.getElementById('chartAnggota').getContext('2d');
    new Chart(ctxAnggota, {
        type: 'bar',
        data: {
            labels: labelsAnggota,
            datasets: [{
                label: 'Jumlah Peminjaman',
                data: dataAnggota,
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                },
            },
            scales: {
                x: {
                    ticks: {
                        display: false // Menyembunyikan label di sumbu X
                    },
                    grid: {
                        display: false // Menyembunyikan garis grid pada sumbu X
                    }
                },
                y: {
                    beginAtZero: true
                }
            },
        }
    });
</script>