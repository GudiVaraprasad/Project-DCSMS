<?php
include('../config/connect.php');

function addAnnouncement($conn, $postData) {
    if (isset($postData['posttype'])) {
        $posttype = $postData['posttype'];
        $subject = $postData['subject'];
        $text = $postData['text'];

        $sql = "INSERT INTO announcements(posttype, subject, text) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sss", $posttype, $subject, $text);

        if ($stmt->execute()) {
            return ['status' => 'success'];
        } else {
            return ['status' => 'error', 'message' => $stmt->error];
        }
    }

    return ['status' => 'error', 'message' => 'Missing posttype parameter'];
}

// Usage
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    echo json_encode(addAnnouncement($conn, $_POST));
}
