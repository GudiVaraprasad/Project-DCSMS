<?php
include('../config/connect.php');

class addtimeslot {
    private $conn;

    public function __construct($conn) {
        $this->conn = $conn;
    }

    public function addTimeSlot($postData) {
        if (isset($postData['day'])) {
            $shiftcat = $postData['shiftcat'];
            $shiftsubcat = $postData['shiftsubcat'];
            $starttime = $postData['starttime'];
            $endtime = $postData['endtime'];
            $day = $postData['day'];

            $sql = "INSERT INTO schedule(day, starttime, endtime, cid, scid) VALUES (?, ?, ?, ?, ?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssss", $day, $starttime, $endtime, $shiftcat, $shiftsubcat);

            if ($stmt->execute()) {
                return ['status' => 'success'];
            } else {
                return ['status' => 'error', 'message' => $stmt->error];
            }
        }

        return ['status' => 'error', 'message' => 'Missing day parameter'];
    }
}

// Usage
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $scheduleManager = new addtimeslot($conn);
    echo json_encode($scheduleManager->addTimeSlot($_POST));
}
?>
