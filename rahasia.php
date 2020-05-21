<?php
    include('header.php');
    include('footer.php');
    $conn = null;

    function reset_db($kls)
    {
        global $conn;
        include('opendb.php');
        mysqli_query($conn, 'UPDATE tbl_guru SET pemilih_'.$kls.' = 0');
        include('closedb.php');
    }

    if (!isset($_SESSION['rahasia']))
    {
        if (isset($_GET['pwd']))
        {
            $pwd = md5($_GET['pwd']);
            $pwd_valid = '<SOME MD5 HASH>';
            if (!strcmp($pwd, $pwd_valid))
            {
                $_SESSION['rahasia'] = true;
                header('Location: rahasia.php');
            }
            else
            {
                echo 'Password salah. Minggato wae.';
            }
        }
        else
        {
            echo 'Password: <input type="password" id="id_pwd">';
            echo '<button type="submit" class="btn btn-primary" onclick="mash00k()">mash00k</button>';
        }
    }

    if (isset($_SESSION['rahasia']) && ($_SESSION['rahasia'] == true))
    {
        echo '<strong>Menu: </strong>';
        echo '<a href="?clear=yes">Reset database</a>';
        if (isset($_GET['clear']) && ($_GET['clear'] == 'yes'))
        {
            reset_db('10_ipa');
            reset_db('10_ips');
            reset_db('11_ipa');
            reset_db('11_ips');
            reset_db('12_ipa');
            reset_db('12_ips');
        }
    }
?>

<html><body><script>
    function mash00k()
    {
        location.href = '?pwd=' + document.getElementById('id_pwd').value;
    }
</script></body></html>
