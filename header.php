<?php
    if (session_status() == PHP_SESSION_NONE)
        session_start();

    if (!isset($_SESSION['auth']))
    {
        header('Location: login.php');
    }

    echo '<html>';
    echo '    <head>';
    echo '        <meta charset="utf-8">';
    echo '        <link rel="stylesheet" href="lib/bootstrap.min.css">';
    echo '        <script src="lib/jquery-3.3.1.slim.min.js"></script>';
    echo '        <script src="lib/popper.min.js"></script>';
    echo '        <script src="lib/bootstrap.min.js"></script>';
    echo '    </head>';
    echo '</html>';

    function kls_str($kls)
    {
        $split = explode('_', $kls);
        $str_kls = '';
        $str_jurusan = '';
        switch ($split[0])
        {
            case '10':
                $str_kls = 'X';
                break;
            case '11':
                $str_kls = 'XI';
                break;
            case '12':
                $str_kls = 'XII';
                break;
        }
        switch ($split[1])
        {
            case 'ipa':
                $str_jurusan = 'MIPA';
                break;
            case 'ips':
                $str_jurusan = 'IPS';
                break;
        }
        $str = $str_kls.' '.$str_jurusan;
        return $str;
    }

    include('opendb.php');
?>
