
<?php

function Redirect($url, $permanent = false)
{
    if (headers_sent() === false)
    {
        header('Location: ' . $url, true, ($permanent === true) ? 301 : 302);
    }

    exit();
}
/*
if (isset($_COOKIE['user_id']) && !empty($_COOKIE['user_id'])) {
    $user_id = $_COOKIE['user_id'];

    try {
        $db = new catsadmin();
        $users = $db->query("SELECT * FROM users WHERE id = ?", array($user_id));
        if (is_array($users) && count($users) > 0) {
            $user_data = array();
            foreach ($users as $key => $user) {
                $user_data['username'] = $user->username;
            }
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
    //Redirect(URLADDR, false);
}
*/