<?php
include_once('../config.php');

$status = false;
$message = null;

if (isset($_POST['catssn']) && !empty($_POST['catssn'])) {
    $catssn = $_POST['catssn'];
	if (strlen($catssn) == 5) {
		if (isset($_POST['mtype']) && !empty($_POST['mtype'])) {
			$mtype = $_POST['mtype'];
			if (isset($_POST['mname']) && !empty($_POST['mname'])) {
				$mname= $_POST['mname'];
				if (strlen($mname) <= 30){
                    if (isset($_POST['mach2fa']) && !empty($_POST['mach2fa'])) {
                        $mach2fa = $_POST['mach2fa'];
                        if (isset($_POST['authType']) && !empty($_POST['authType'])) {
                            $authType = $_POST['authType'];
					            try {
                                    $db = new catsadmin();
                                    $db->query("INSERT INTO machines (catssn, mtype, mname, mach2fa, authType) VALUES (?,?,?,?,?)", array($catssn, $mtype, $mname, $mach2fa, $authType));
                                } catch (Exception $e) {
                                    echo '<h3>Error:</h3>';
                                    echo $e->getCode() . ': ' . $e->getMessage();
                                    echo '<h3>Stack trace:</h3>';
                                    foreach ($e->getTrace() as $trace) {
                                        echo $trace['file'] . ' Line #' . $trace['line'] . '<br />';
                                }
                            }
					        $status = true;
                            $message = 'A $mname with CATS system $catssn has been added';
                        } else {
                            $status = false;
                            $message = 'Pick a Machine Authorization Group';
                        }
                    } else {
                        $status = false;
                        $message = 'Pick a Machine 2 Factor Authentication';
                    }
                } else {
					$status = false;
					$message = 'Machine names must be less than 30 characters.';
					}
            } else {
                $status = false;
                $message = 'Please enter a machine name to proceed';
				}
        } else {
            $status = false;
            $message = 'Please choose a machine type to proceed.';
			}
	} else {
        $status = false;
        $message = 'CATS Serial Numbers must be 5 digits long.';
		}
} else {
    $status = false;
    $message = 'Please enter the CATS serial number that is connected to your machine';
}

$return = array('status' => $status, 'message' => $message, 'redirect' => URLADDR.'?page=addmachine');

echo json_encode($return);

