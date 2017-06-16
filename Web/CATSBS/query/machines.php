<?php
include_once('../config.php');

$machines_data = array();

try {
    $db = new catsadmin();
    $machines = $db->query("SELECT * FROM machines");
    if (is_array($machines) && count($machines) > 0) {
        foreach ($machines as $key => $machines) {
            $machines_data['data'][$key]['mid'] = $machines->mid;
            $machines_data['data'][$key]['mtype'] = $machines->mtype;
            $machines_data['data'][$key]['mname'] = $machines->mname;
            $machines_data['data'][$key]['mstate'] = $machines->mstate;
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
echo json_encode($machines_data);

