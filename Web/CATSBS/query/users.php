<?php
include_once('../config.php');

$users_data = array();

try {
    $db = new catsadmin();
    $users = $db->query("SELECT * FROM users");
    if (is_array($users) && count($users) > 0) {
        foreach ($users as $key => $user) {
            $users_data['data'][$key]['id'] = $user->id;
            $users_data['data'][$key]['username'] = $user->username;
            $users_data['data'][$key]['cuid'] = $user->cuid;
            $users_data['data'][$key]['fn'] = $user->fn;
            $users_data['data'][$key]['ln'] = $user->ln;
            $users_data['data'][$key]['major'] = $user->major;
            $users_data['data'][$key]['class'] = $user->class;
            $users_data['data'][$key]['auth1'] = $user->auth1;
            $users_data['data'][$key]['admin'] = $user->admin;
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

header('Content-type: application/json');
echo json_encode($users_data);