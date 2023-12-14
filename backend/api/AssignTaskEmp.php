<?php
include('../config/connect.php');
$schid = $_POST['schid'];
$assignEmp = $_POST['AssignEmp'];

function insertStaffShift($schid, $assignEmp, $conn)
{
  if (isset($schid, $assignEmp)) {
    $sql = "INSERT INTO staffshift(scid, sid) VALUES ('$schid', '$assignEmp')";
    if ($conn->query($sql) === TRUE) {
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

$result = insertStaffShift($schid, $assignEmp, $conn);
echo $result;
