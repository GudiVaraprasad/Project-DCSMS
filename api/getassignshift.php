<?php
include('../config/connect.php');
if (isset($_POST['CatId'])) {
    $cid = $_POST['CatId'];
    $sql = "SELECT schid,day,starttime,endtime,sid,scid,scname FROM schedule LEFT JOIN subcategory on schedule.sid=subcategory.scid WHERE schedule.cid='$cid'";
    $result = $conn->query($sql);

    $data = array();
    if ($result->num_rows > 0) {
        $count = 1;
        while ($row = $result->fetch_assoc()) {
            $tempdata = array();
            $tempdata['id'] = $count++;
            $tempdata['subcategory'] = $row['scname'];
            $tempdata['day'] = $row['day'];
            $tempdata['timeslot'] = $row['starttime'] . "-" . $row['endtime'];
            $tempdata['action'] = "<button class='btn btn-primary' onclick='AssignId(" . $row['schid'] . ")'>Assign</button>";
            $data[] = $tempdata;
        }
        echo json_encode(array("data" => $data));
    }
}
