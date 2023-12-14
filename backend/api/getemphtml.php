<?php
include('../config/connect.php');
$curr_day = date('l');
if (isset($_POST['schid'])) {
    $schid = $_POST['schid'];
    $sql = "SELECT *
    FROM staff
    WHERE sid NOT IN (
        SELECT staffshift.sid
        FROM staffshift INNER JOIN schedule on staffshift.scid=schedule.scid
        WHERE schedule.day = '$curr_day'
    );
    ";
    $result = $conn->query($sql);

    $html = '<select class="form-control" id="AssignEmployee" name="AssignEmployee">';

    if ($result->num_rows > 0) {
        $count = 1;
        while ($row = $result->fetch_assoc()) {
            $html .= '<option value=' . $row['sid'] . '>' . $row['fname'] . '  </option>';
        }
    }
    $html .= '</select>';
    echo $html;
}
