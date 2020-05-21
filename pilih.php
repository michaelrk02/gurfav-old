<?php
    include 'header.php';
    if (isset($_GET['kls']) && isset($_GET['nama']))
    {
        $kls = $_GET['kls'];
        $nama = urldecode($_GET['nama']);
        $q = mysqli_query($conn, 'SELECT pemilih_'.$kls.' FROM tbl_guru WHERE nama = "'.$nama.'"');
        $row = mysqli_fetch_row($q);
        $pemilih = $row[0];
        $pemilih++;
        mysqli_query($conn, 'UPDATE tbl_guru SET pemilih_'.$kls.' = '.$pemilih.' WHERE nama = "'.$nama.'"');
        mysqli_free_result($q);
        echo '<html><body><script> var g_kls = "'.$kls.'"; </script></body></html>';
    }
    else
    {
        die('Kesalahan teknis');
    }
    include 'footer.php';
?>

<html>
    <head>
        <title>Terima Kasih</title>
    </head>
    <body>
        <br><br><br><br>
        <div class="container" style="text-align: center">
            <h1>Terima kasih telah memilih!</h1>
            <br>
            <button class="btn btn-primary" onclick="kembali()">Kembali</button>
        </div>
        <script>
            function kembali()
            {
                location.href = 'pilihan.php?kls=' + g_kls;
            }
        </script>
    </body>
</html>
