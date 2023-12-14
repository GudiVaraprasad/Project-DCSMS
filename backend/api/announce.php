<?php
include('../config/connect.php');
if (isset($_POST['posttype'])) {
    $posttype = $_POST['posttype'];
    $subject = $_POST['subject'];
    $text = $_POST['text'];

    $sql = "INSERT INTO announcements(posttype,subject,text) VALUES('$posttype','$subject','$text')";
    if ($conn->query($sql) === TRUE) {
        $data = array();
        $data['status'] = "success";
        echo json_encode($data);
    } else {
        // echo "Error: " . $sql . "<br>" . $conn->error;
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
