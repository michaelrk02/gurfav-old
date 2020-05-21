<?php
    if (session_status() == PHP_SESSION_NONE)
        session_start();
    
    echo '<html><head><title>Login Page</title></head></html>';

    function show()
    {
        echo '<form action="login.php" method="get">';
        echo '<label>Token: </label>';
        echo '<input type="password" name="token">';
        echo '<button type="submit" class="btn btn-primary">Login</button>';
        echo '</form>';
    }

    echo '<html><body>';
    if (isset($_SESSION['auth']) && ($_SESSION['auth'] == true))
    {
        header('Location: pilihan.php');
    }
    else
    {
        if (isset($_GET['token']))
        {
            $token_md5 = md5($_GET['token']);
            $token_valid = '54966f84e8934c8a214b2b6d6d12fcc3';
            if (!strcmp($token_md5, $token_valid))
            {
                $_SESSION['auth'] = true;
                header('Location: login.php');
            }
            else
            {
                echo '<strong>Error</strong> Token yang anda masukkan tidak valid<br>';
                show();
            }
        }
        else
        {
            show();
        }
    }
    echo '</body></html>';
?>

