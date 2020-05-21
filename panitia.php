<?php
    include 'header.php';

    function show_pemenang($kls)
    {
        $q = mysqli_query($GLOBALS['conn'], 'SELECT nama,pemilih_'.$kls.' FROM tbl_guru ORDER BY pemilih_'.$kls.' DESC');
        $str = kls_str($kls);
        echo '<strong>Suara terbanyak kelas '.$str.'</strong>:<br>';
        $juara = 1;
        while ($row = mysqli_fetch_row($q))
        {
            if ($juara > 3)
                break;

            $nama = $row[0];
            $suara = $row[1];
            echo ' ['.$juara.'] '.$nama.' ('.$suara.' suara)<br>';

            $juara++;
        }
        echo '<br>';
        mysqli_free_result($q);
    }
    
    show_pemenang('10_ipa');
    show_pemenang('10_ips');
    show_pemenang('11_ipa');
    show_pemenang('11_ips');
    show_pemenang('12_ipa');
    show_pemenang('12_ips');

    include 'footer.php';
?>
