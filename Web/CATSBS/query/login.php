<?php
include_once('../config.php');

$status = false;
$message = null;

if (isset($_POST['username']) && !empty($_POST['username'])) {
    $username = $_POST['username'];
    if (isset($_POST['password']) && !empty($_POST['password'])) {
        $password = $_POST['password'];
        try {
            $db = new catsadmin();
            $users = $db->query("SELECT * FROM users WHERE username = ? AND password = ?", array($username, $password));
            if (is_array($users) && count($users) > 0) {
                $status = true;
                $message = 'Awesome, you have been logged in!';

                $day = 86400 * 30;

                foreach ($users as $user) {
                    setcookie('user_id', $user->id, time() + ($day * 30), "/");
                }

            } else {
                $status = false;
                $message = 'Sorry, but the credentials you entered were not found.';
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

$return = array('status' => $status, 'message' => $message, 'redirect' => URLADDR.'?page=cp');

echo json_encode($return);