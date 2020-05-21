<?php
    include 'header.php';
?>

<html>
    <head>
        <title>Pilih Guru Favoritmu!</title>
    </head>
    <body>
        <div class="container-fluid">
            <?php
                $_kls = isset($_GET['kls']) ? $_GET['kls'] : '10_ipa';
                function add_button($kelas)
                {
                    $class = !strcmp($kelas, $GLOBALS['_kls']) ? 'btn btn-primary' : 'btn btn-outline-secondary';
                    $str = kls_str($kelas);
                    echo '<button class="'.$class.'" onclick="pilihkls(\''.$kelas.'\')">'.$str.'</button>';
                }
                add_button('10_ipa');
                add_button('10_ips');
                add_button('11_ipa');
                add_button('11_ips');
                add_button('12_ipa');
                add_button('12_ips');
                echo '<script> var g_kls = "'.$_kls.'"; </script>';
            ?>
            <div class="jumbotron text-center">
                <table>
                    <tr>
                        <td><img src="img/icon/logo-smaga.png" width="120px" height="120px"></td>
                        <td width="99%">
                            <div style="text-align: center">
                                <h1>Program Guru Favorit SMAGA</h1>
                                <h6>Pilih guru favoritmu!</h6>
                            </div>
                        </td>
                        <td><img src="img/icon/logo-mpk.png" width="120px" height="120px"></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="container">
            Cari guru:
            <br>
            <table>
                <tr>
                    <td width="99%"><input id="id_cari" class="form-control"></td>
                    <td><button class="btn btn-primary" onclick="cari()">Cari</button></td>
                </tr>
            </table>
            <br>
            <?php
                $cari = urldecode(isset($_GET['cari']) ? $_GET['cari'] : '');
                $q = mysqli_query($conn, 'SELECT * FROM tbl_guru WHERE nama LIKE "%'.$cari.'%"');
                while ($row = mysqli_fetch_row($q))
                {
                    $nama = $row[0];
                    $nama_url = urlencode($nama);
                    $mapel = $row[1];
                    $kelas = $row[2];
                    $kls = '';
                    $kelas_split = explode(',', $kelas);
                    for ($i = 0; $i < count($kelas_split); $i++)
                    {
                        $sep = ($i == count($kelas_split) - 1) ? '' : ', ';
                        $kls = $kls.kls_str($kelas_split[$i]).$sep;
                    }
                    echo '<div class="card">';
                    echo ' <div class="card-body">';
                    echo '  <table>';
                    echo '   <tr>';
                    echo '    <td>';
                    echo '     <img src="img/'.$nama.'.jpg">';
                    echo '    </td>';
                    echo '    <td class="container">';
                    echo '     <h3>'.$nama.'</h3>';
                    echo '     <h6>'.$mapel.'</h6>';
                    echo '     <h6>'.$kls.'</h6>';
                    echo '    </td>';
                    echo '   </tr>';
                    echo '  </table>';
                    echo ' </div>';
                    echo ' <div class="card-footer">';
                    echo '  <button class="btn btn-primary" onclick="pilih(\''.$nama.'\')">PILIH</button>';
                    echo ' </div>';
                    echo '</div>';
                    echo '<br>';
                }
                mysqli_free_result($q);
                echo '<br>';
                echo '<section id="selesai">';
                echo ' <div style="text-align: center">';
                echo '  <p>Guru terpilih: <span id="id_terpilih">tidak ada</span></p>';
                echo '  <button onclick="konfirm()" class="btn btn-primary">SELESAI</button>';
                echo ' </div>';
                echo '</section>';
                echo '<br><br>';
                include 'footer.php';
            ?>
        </div>
        <div class="container-fluid">
            <div class="jumbotron text-center">
                <table>
                    <tr>
                        <td><img src="img/icon/logo-admin.png" width="120px" height="120px"></td>
                        <td width="99%"><h6 style="text-align: center">Diberdayakan oleh: Administrator SMAGA</h6></td>
                    </tr>
                </table>
            </div>
        </div>
        <script>
            function pilihkls(kls)
            {
                g_kls = kls;
                location.href = '?kls=' + kls;
            }

            function cari()
            {
                location.href = '?kls=' + g_kls + '&cari=' + document.getElementById('id_cari').value;
            }

            function pilih(nama)
            {
                var enc = encodeURIComponent(nama);
                document.getElementById('id_terpilih').innerHTML = nama;
                alert('Terpilih: ' + nama + '\nKlik "SELESAI" untuk melanjutkan');
                location.href = "#selesai";
            }

            function konfirm()
            {
                var nama = document.getElementById('id_terpilih').innerHTML;
                if (nama != 'tidak ada')
                {
                    var enc = encodeURIComponent(nama);
                    var conf = confirm('Memilih: ' + nama + '\nApakah anda yakin?');
                    if (conf) location.href = 'pilih.php?kls=' + g_kls + '&nama=' + enc;
                }
                else
                {
                    alert('Pilih satu guru terlebih dahulu');
                }
            }
        </script>
    </body>
</html>

