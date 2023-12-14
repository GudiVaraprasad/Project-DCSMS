<?php
include('../config/connect.php');

function addTimeSlot($conn, $postData) {
    if (isset($postData['day'])) {
        $shiftcat = $postData['shiftcat'];
        $shiftsubcat = $postData['shiftsubcat'];
        $starttime = $postData['starttime'];
        $endtime = $postData['endtime'];
        $day = $postData['day'];

        $sql = "INSERT INTO schedule(day,starttime,endtime,cid,scid) VALUES(?, ?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sssss", $day, $starttime, $endtime, $shiftcat, $shiftsubcat);

        if ($stmt->execute()) {
            return ['status' => 'success'];
        } else {
            return ['status' => 'error', 'message' => $stmt->error];
        }
    }

    return ['status' => 'error', 'message' => 'Missing day parameter'];
}

// Usage
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    echo json_encode(addTimeSlot($conn, $_POST));
}
