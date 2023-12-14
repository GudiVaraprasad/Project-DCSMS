<?php
include('../config/connect.php');
if (isset($_POST['CatId'])) {
    $cid = $_POST['CatId'];
    $sql = "SELECT schid,day,starttime,endtime,sid,schedule.cid,schedule.scid,scname FROM schedule LEFT JOIN subcategory on schedule.scid=subcategory.scid WHERE schedule.cid='$cid' AND schedule.sid is NULL";
    $result = $conn->query($sql);
    $data = array();
    if ($result->num_rows > 0) {
        $count = 1;
        while ($row = $result->fetch_assoc()) {
            $tempdata = array();
            $tempdata['id'] = $count++;
            $tempdata['category'] = $row['scname'];
            $tempdata['day'] = $row['day'];
            $tempdata['timeslot'] = $row['starttime'] . "-" . $row['endtime'];
            $tempdata['action'] = "<button class='btn btn-white' onclick='ApplyShift(" . $row['schid'] . ',' . $row['cid'] . ")'>Apply Shift</button>";
            $data[] = $tempdata;
        }
        echo json_encode(array("data" => $data));
    }
}
