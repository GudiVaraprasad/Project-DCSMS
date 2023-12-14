<?php
include('../config/connect.php');
if (isset($_POST['schid'])) {
    $schid = $_POST['schid'];
    $sql = "UPDATE schedule SET sid = '" . $_SESSION['sid'] . "' WHERE schedule.schid = " . $schid;

    if (mysqli_query($conn, $sql)) {
        $data = array();
        $data['status'] = "success";
        echo json_encode($data);
    } else {
        $data = array();
        $data['status'] = "fail";
        echo json_encode($data);
    }
} else {
    $data = array();
    $data['status'] = 'false';
    $data['message'] = 'Unable to access';
    echo json_encode($data);
}
