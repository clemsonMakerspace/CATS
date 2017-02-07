<?php
include_once('../config.php');

unset($_COOKIE['user_id']);
setcookie('user_id', null, -1, '/');

$return = array('redirect' => URLADDR);

echo json_encode($return);


