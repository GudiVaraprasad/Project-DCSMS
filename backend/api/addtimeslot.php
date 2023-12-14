<?php
include('../config/connect.php');
if (isset($_POST['day'])) {
  $shiftcat = $_POST['shiftcat'];
  $shiftsubcat = $_POST['shiftsubcat'];
  $starttime = $_POST['starttime'];
  $endtime = $_POST['endtime'];
  $day = $_POST['day'];
  $sql = "INSERT INTO schedule(day,starttime,endtime,cid,scid) VALUES('$day','$starttime','$endtime','$shiftcat','$shiftsubcat')";
  if ($conn->query($sql) === TRUE) {
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
