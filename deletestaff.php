<?php
include './config/connect.php';
$sql = "DELETE FROM staff WHERE sid='" . $_GET["sid"] . "'";
if (mysqli_query($conn, $sql)) {
    echo "<script>window.location='managestaff.php'</script>";
} else {
    echo "<script>alert('Failed to delete!');window.location='managestaff.php'</script>";
    header("location:managestaff.php");
}
