
<?php
include_once('../config.php');

$status = false;
$message = null;

if (isset($_POST['username']) && !empty($_POST['username'])) {
    $username = $_POST['username'];
    if (strlen($username) <= 10) {
        if (isset($_POST['cuid']) && !empty($_POST['cuid'])) {
            $cuid = $_POST['cuid'];
            if (substr($cuid, 0, 1) == 'C') {
                if (strlen($cuid) <= 30) {
                    if (isset($_POST['user2fa']) && !empty($_POST['user2fa'])) {
                        $user2fa = $_POST['user2fa'];
                        if (isset($_POST['pin']) && !empty($_POST['pin'])) {
                            $pin = $_POST['pin'];
                            if (ctype_digit($pin)) {
                                if (strlen($pin) == 4) {
                                    if (isset($_POST['pinconfirm']) && !empty($_POST['pinconfirm'])) {
                                        $pinconfirm = $_POST['pinconfirm'];
                                        if (ctype_digit($pinconfirm)) {
                                            if (strlen($pinconfirm) == 4) {
                                                if ($pin == $pinconfirm) {
                                                    if (isset($_POST['fn']) && !empty($_POST['fn'])) {
                                                        $fn = $_POST['fn'];
                                                        if (strlen($fn) <= 30) {
                                                            if (isset($_POST['ln']) && !empty($_POST['ln'])) {
                                                                $ln = $_POST['ln'];
                                                                if (strlen($ln) <= 30) {
                                                                    if (isset($_POST['major']) && !empty($_POST['major'])) {
                                                                        $major = $_POST['major'];
                                                                        if (isset($_POST['class']) && !empty($_POST['class'])) {
                                                                            $class = $_POST['class'];

                                                                            try {
                                                                                $db = new catsadmin();
                                                                                $db->query("INSERT INTO users (username, cuid, user2fa, pin, fn, ln, major, class) VALUES (?,?,?,?,?,?,?,?)", array($username, $cuid, $user2fa, $pin, $fn, $ln, $major, $class));
                                                                                } catch (Exception $e) {
                                                                                echo '<h3>Error:</h3>';
                                                                                echo $e->getCode() . ': ' . $e->getMessage();
                                                                                echo '<h3>Stack trace:</h3>';
                                                                                foreach ($e->getTrace() as $trace) {
                                                                                    echo $trace['file'] . ' Line #' . $trace['line'] . '<br />';
                                                                                }
                                                                            }

                                                                            $status = true;
                                                                            $message = $username.' has been added!';

                                                                        } else {
                                                                            $status = false;
                                                                            $message = 'Please select your class to proceed';
                                                                        }
                                                                    } else {
                                                                        $status = false;
                                                                        $message = 'Please enter your major to proceed';
                                                                    }
                                                                } else {
                                                                    $status = false;
                                                                    $message = 'Your last name cannot exceed 30 characters';
                                                                }
                                                            } else {
                                                                $status = false;
                                                                $message = 'Please enter your last name to proceed';
                                                            }
                                                        } else {
                                                            $status = false;
                                                            $message = 'Your first name cannot exceed 30 characters';
                                                        }
                                                    } else {
                                                        $status = false;
                                                        $message = 'Please enter your first name to proceed';
                                                    }
                                                } else {
                                                    $status = false;
                                                    $message = 'Your Confirmation PIN must match your PIN.';
                                                }
                                            } else {
                                                $status = false;
                                                $message = 'Your PIN Confirmation may only be 4 numbers long.';
                                            }
                                        } else {
                                            $status = false;
                                            $message = 'Your PIN Confirmation may only contain digits.';
                                        }
                                    } else {
                                        $status = false;
                                        $message = 'Please Confirm your PIN by rentering it';
                                    }
                                } else {
                                    $status = false;
                                    $message = 'Your PIN must be 4 digits long';
                                }
                            } else {
                                $status = false;
                                $message = 'Your PIN may contain only numbers.';
                            }
                        } else {
                            $status = false;
                            $message = 'You must enter a Pin Number.';
                        }
                    } else {
                        $status = false;
                        $message = 'Please select a 2 Factor authentication setting';
                    }
                } else {
                    $status = false;
                    $message = 'Sorry, CUID cannot exceed 30 characters';
                }
            } else {
                $status = false;
                $message = 'Your CUID must have a "C" at the beginning';
            }
        } else {
            $status = false;
            $message = 'Please enter your CUID to proceed';
        }
    } else {
        $status = false;
        $message = 'Sorry, username cannot exceed 10 characters';
    }
} else {
    $status = false;
    $message = 'Please enter your username to proceed';
}

$return = array('status' => $status, 'message' => $message, 'redirect' => URLADDR.'?page=cp');


echo json_encode($return);