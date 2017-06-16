<?php
include_once('../config.php');


$status = false;
$message = null;

/*
if (isset($_POST['username']) && !empty($_POST['username'])) {
    $username = $_POST['username'];
        if (isset($_POST['password']) && !empty($_POST['password'])) {
            $password = $_POST['password'];
            try {
                $db = new catsadmin();
                $users = $db->query("SELECT * FROM users WHERE username = ?", array($username));
                if (is_array($users) && count($users) > 0) {
                    foreach ($users as $user) {
                        if (password_verify($password, $user->password)) {
                            $status = true;
                            $message = 'Awesome, you have been logged in!';

                            $day = 86400 * 30;
                            setcookie('user_id', $user->id, time() + ($day * 30), "/");
                        } else {
                            $status = false;
                            $message = '1Sorry, but the credentials you entered were not found.';
                        }
                    }
                } else {
                    $status = false;
                    $message = '2Sorry, but the credentials you entered were not found.';
                }
            } catch (Exception $e) {
                echo '<h3>Error:</h3>';
                echo $e->getCode() . ': ' . $e->getMessage();
                echo '<h3>Stack trace:</h3>';
                foreach ($e->getTrace() as $trace) {
                    echo $trace['file'] . ' Line #' . $trace['line'] . '<br />';
                }
            }
        } else {
            $status = false;
            $message = 'Please enter your password to proceed';
        }
} else {
    $status = false;
    $message = 'Please enter your username to proceed';
}
*/

try {
    $db = new catsadmin();
    $users = $db->query("SELECT * FROM users WHERE username = ?", array('admin'));
    if (is_array($users) && count($users) > 0) {
        foreach ($users as $user) {
            if (password_verify('pass123', $user->password)) {
                echo 'Password matches';
            } else {
                echo 'Password does not match';
            }
        }
    } else {
        echo 'No results found';
    }
} catch (Exception $e) {
    echo '<h3>Error:</h3>';
    echo $e->getCode() . ': ' . $e->getMessage();
    echo '<h3>Stack trace:</h3>';
    foreach ($e->getTrace() as $trace) {
        echo $trace['file'] . ' Line #' . $trace['line'] . '<br />';
    }
}

//$return = array('status' => $status, 'message' => $message, 'redirect' => URLADDR.'?page=cp');
//$return = array('message' => $_POST['username'].' '.$_POST['password']);

//echo json_encode($return);

