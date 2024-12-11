<!-- Main content -->

<section class="content">
  <div class="box box-primary">
    <div class="box-header with-border">
      <h1>
        Data Profil
      </h1>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <div class="table-responsive">
        <table id="example1" class="table table-bordered table-striped">
          <tbody>
            <?php
            $sql = $koneksi->query("SELECT * FROM tbl_profile");
            while ($data = $sql->fetch_assoc()) {
            ?>
              <tr>
                <td>Gambar</td>
                <td>
                  <a class="fancybox" data-fancybox="gallery" href="../img/profil/<?php echo $data['gambar']; ?>">
                    <img src="../img/profil/<?php echo $data['gambar']; ?>" alt="Gambar" style="width: 100px; height: auto;">
                  </a>
                </td>
              </tr>
              <tr>
                <td>Logo</td>
                <td>
                  <a class="fancybox" data-fancybox="gallery" href="../img/profil/<?php echo $data['logo']; ?>">
                    <img src="../img/profil/<?php echo $data['logo']; ?>" alt="logo" style="width: 100px; height: auto;">
                  </a>
                </td>
              </tr>
              <tr>
                <td>Nama Website</td>
                <td><?php echo $data['titlewebsite']; ?></td>
              </tr>
              <tr>
                <td>Nama Dinas</td>
                <td><?php echo $data['titleparagraf']; ?></td>
              </tr>
              <tr>
                <td>Paragraf Welcome</td>
                <td><?php echo $data['welcomeparagraf']; ?></td>
              </tr>
              <tr>
                <td>Copyright</td>
                <td><?php echo $data['copyright']; ?></td>
              </tr>
              <tr>
                <td>Deskripsi</td>
                <td><?php echo $data['description']; ?></td>
              </tr>
              <tr>
                <td>Kata Kunci</td>
                <td><?php echo $data['keywords']; ?></td>
              </tr>
              <tr>
                <td>Alamat</td>
                <td><?php echo $data['alamat']; ?></td>
              </tr>
              <tr>
                <td>Maps</td>
                <td><?php echo $data['gmap']; ?></td>
              </tr>
              <tr>
                <td>Email</td>
                <td><?php echo $data['email']; ?></td>
              </tr>
              <tr>
                <td>Telepon</td>
                <td><?php echo $data['telepon']; ?></td>
              </tr>
              <tr>
                <td>Facebook</td>
                <td><?php echo $data['facebook']; ?></td>
              </tr>
              <tr>
                <td>Instagram</td>
                <td><?php echo $data['instagram']; ?></td>
              </tr>
              <tr>
                <td>X</td>
                <td><?php echo $data['x']; ?></td>
              </tr>
              <tr>
                <td>Youtube</td>
                <td><?php echo $data['youtube']; ?></td>
              </tr>
              <!-- Tombol Ubah Data di luar tabel, dengan posisi kanan bawah -->
              <div style=" margin-top: 20px; margin-bottom: 20px;">
                <a href="?page=MyApp/edit_profile&kode=<?php echo $data['id_profile']; ?>" title="Ubah Data" class="btn btn-success">
                  <i class="glyphicon glyphicon-edit"></i> Ubah Data
                </a>
              </div>
            <?php
            }
            ?>
          </tbody>
        </table>

      </div>

    </div>
  </div>
</section>