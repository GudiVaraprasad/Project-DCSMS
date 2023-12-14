<?php
include('../config/connect.php');
$schid = $_POST['schid'];
function getAvailableStaffOptions($schid, $conn)
{
    $curr_day = date('l');

    if (isset($schid)) {
        $sql = "SELECT *
            FROM staff
            WHERE sid NOT IN (
                SELECT staffshift.sid
                FROM staffshift INNER JOIN schedule ON staffshift.scid = schedule.scid
                WHERE schedule.day = '$curr_day' AND schedule.schid = '$schid'
            );
        ";
        $result = $conn->query($sql);

        $html = '<select class="form-control" id="AssignEmployee" name="AssignEmployee">';

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $html .= '<option value=' . $row['sid'] . '>' . $row['fname'] . '</option>';
            }
        }

        $html .= '</select>';
        return $html;
    }

    return "";
}
$result = getAvailableStaffOptions($schid, $conn);
echo $result;
