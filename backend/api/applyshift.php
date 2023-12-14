<?php
include('../config/connect.php');
$schid = $_POST['schid'];
$sessionSid = $_SESSION['sid'];

function updateSchedule($schid, $sessionSid, $conn)
{
    if (isset($schid)) {
        $sql = "UPDATE schedule SET sid = '$sessionSid' WHERE schedule.schid = $schid";

        if (mysqli_query($conn, $sql)) {
            $data = array();
            $data['status'] = "success";
            return json_encode($data);
        } else {
            $data = array();
            $data['status'] = "fail";
            return json_encode($data);
        }
    } else {
        $data = array();
        $data['status'] = 'false';
        $data['message'] = 'Unable to access';
        return json_encode($data);
    }
}
$result = updateSchedule($schid, $sessionSid, $conn);
echo $result;
