<?php

include_once('../config.php');

$username = "";
$cuid = "";
$pin = "";
$fn = "";
$ln = "";
$major = "";
$class = "";

if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$username = mysqli_real_escape_string($link, $_POST['username']);
$cuid = mysqli_real_escape_string($link, $_POST['cuid']);
$pin = mysqli_real_escape_string($link, $_POST['pin']);
$fn = mysqli_real_escape_string($link, $_POST['fn']);
$ln = mysqli_real_escape_string($link, $_POST['ln']);
$major = mysqli_real_escape_string($link, $_POST['major']);
$class = mysqli_real_escape_string($link, $_POST['class']);


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = test_input($_POST["username"]);
    $cuid = test_input($_POST["cuid"]);
    $pin = test_input($_POST["pin"]);
    $fn = test_input($_POST["fn"]);
    $ln = test_input($_POST["ln"]);
    $major = test_input($_POST["major"]);
    $class = test_input($_POST["class"]);
}

function test_input($data) {
    $data = trim($data);8**/*/*/*/*/
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

$sql = "INSERT INTO users(username, cuid, pin, fn, ln, major, class)
    VALUES('$cuid', '$pin','$pin','$fn','$ln','$major','$class');
    if(mysqli_query($link, $sql)){
      echo "User added successfully.";
    } else{
        echo "ERROR: User Could not add user. " . 
    mysqli_error($link);
    }
mysqli_close($link);/*


    $name = $email = $gender = $comment = $website = "";

