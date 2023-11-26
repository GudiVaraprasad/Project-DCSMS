<?php 
include('../connect.php');
if(isset($_POST['schid'])){
    $schid=$_POST['schid'];
    $AssignEmp=$_POST['AssignEmp'];
    $sql="INSERT INTO staffshift(scid,sid) VALUES('$schid','$AssignEmp')";
    if ($conn->query($sql) === TRUE) {
        $data=array();
        $data['status']="success";
        echo json_encode($data);
      } else {
        // echo "Error: " . $sql . "<br>" . $conn->error;
        $data=array();
        $data['status']="fail";
        echo json_encode($data);
      }
}else{
    $data=array();
    $data['status']='false';
    $data['message']='Unable to access';
    echo json_encode($data);
}

?>