<?php
include('../config/connect.php');
if (isset($_POST['CatId'])) {
    $cid = $_POST['CatId'];
    $curr_day = date('l');
    // echo $curr_day;
    $sql = "SELECT schid,day,starttime,endtime,sid,schedule.scid,scname FROM schedule LEFT JOIN subcategory on schedule.scid=subcategory.scid WHERE schedule.cid='$cid'";
    $result = $conn->query($sql);
    // print_r($sql);
    $data = array();
    if ($result->num_rows > 0) {
        $count = 1;
        while ($row = $result->fetch_assoc()) {
            if ($row['day'] == $curr_day) {
                $tempdata = array();
                $tempdata['id'] = $count++;
                $tempdata['subcategory'] = $row['scname'];
                $tempdata['day'] = $row['day'];
                $tempdata['timeslot'] = $row['starttime'] . "-" . $row['endtime'];
                $tempdata['action'] = "<button class='btn btn-white' onclick='AssignId(" . $row['schid'] . ")'>Assign</button>";
                $data[] = $tempdata;
            }
        }
        echo json_encode(array("data" => $data));
    }
}
