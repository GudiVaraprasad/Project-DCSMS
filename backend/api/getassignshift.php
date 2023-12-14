<?php
include('../config/connect.php');
$cid = $_POST['CatId'];
function getAvailableSchedules($cid, $conn)
{
    if (isset($cid)) {
        $curr_day = date('l');
        $sql = "SELECT schid, day, starttime, endtime, sid, schedule.scid, scname FROM schedule 
                LEFT JOIN subcategory ON schedule.scid = subcategory.scid 
                WHERE schedule.cid='$cid' AND schedule.sid IS NULL";
        $result = $conn->query($sql);
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
                    $tempdata['action'] = "<button class='btn btn-white' onclick='AssignId(" . $row['schid'] . ',' . $row['scid'] . ")'>Assign</button>";
                    $data[] = $tempdata;
                }
            }
            return json_encode(array("data" => $data));
        }
    }

    return json_encode(array("data" => array()));
}

$result = getAvailableSchedules($cid, $conn);
echo $result;
