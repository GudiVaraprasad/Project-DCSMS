<?php

include('../config/connect.php');
$sid = $_GET["sid"];
function deleteStaff($sid, $conn)
{
    $sql = "DELETE FROM staff WHERE sid='$sid'";
    if (mysqli_query($conn, $sql)) {
        return true;
    } else {
        return false;
    }
}
if (deleteStaff($sid, $conn)) {
    echo "<script>window.location='../../frontend/pages/managestaff.php'</script>";
} else {
    echo "<script>alert('Failed to delete!');
          window.location='../../frontend/pages/managestaff.php';</script>";
}
