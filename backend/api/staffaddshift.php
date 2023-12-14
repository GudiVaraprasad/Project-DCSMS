<?php
include('../config/connect.php');
$cid = $_POST['CatId'];
function getAvailableShifts($cid, $conn)
{
    if (isset($cid)) {
        $sql = "SELECT schid, day, starttime, endtime, sid, schedule.cid, schedule.scid, scname 
                FROM schedule LEFT JOIN subcategory ON schedule.scid = subcategory.scid 
                WHERE schedule.cid='$cid' AND schedule.sid IS NULL";
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
            return json_encode(array("data" => $data));
        }
    }

    return json_encode(array("data" => array()));
}
$result = getAvailableShifts($cid, $conn);
echo $result;
