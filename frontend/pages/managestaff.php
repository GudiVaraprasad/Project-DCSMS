<?php
include '../../backend/config/connect.php';
if (!isset($_SESSION['email'])) {
    header('location: managerlogin.php');
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>PROJECT DCSMS</title>
    <link rel="shortcut icon" href="../assets/icon.png" type="image/png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

    <!-- Vertical navbar -->
    <div class="vertical-nav bg-white" id="sidebar">
        <div class="py-4 px-3 mb-4 bg-light">
            <div class="media d-flex align-items-center">
                <img loading="lazy" src="../assets/pic.jpg" alt="..." width="80" height="80" class="mr-3 rounded-circle img-thumbnail shadow-sm">
                <div class="media-body">
                    <h4 class="m-0"><?php echo $_SESSION['fname']; ?></h4>
                </div>
            </div>
        </div>



        <ul class="nav flex-column bg-white mb-0">
            <li class="nav-item">
                <a href="index.php" class="nav-link text-dark">
                    <i class="fa fa-home mr-3 text-dark fa-fw"></i>
                    Home
                </a>
            </li>
        </ul>
        <br>


        <p class="text-dark font-weight-bold text-uppercase px-3 small pb-4 mb-0">Operations</p>

        <ul class="nav flex-column bg-white mb-0">
            <li class="nav-item">
                <a href="addtimeslots.php" class="nav-link text-dark bg-light">
                    <i class="fa fa-plus-circle mr-3 text-dark fa-fw"></i>
                    Add Time Slots
                </a>
            </li>
            <li class="nav-item">
                <a href="assignshift.php" class="nav-link text-dark">
                    <i class="fa fa-mouse-pointer mr-3 text-dark fa-fw"></i>
                    Assign Shift
                </a>
            </li>

            <li class="nav-item">
                <a href="managestaff.php" class="nav-link text-dark">
                    <i class="fa fa-pencil-square-o mr-3 text-dark fa-fw"></i>
                    Manage Staff
                </a>
            </li>
            <!-- <li class="nav-item">
        <a href="index.php" class="nav-link text-dark">
          <i class="fa fa-th-list mr-3 text-dark fa-fw"></i>
          Dining Dashboard
        </a>
      </li> -->
            <li class="nav-item">
                <a href="announcements.php" class="nav-link text-dark">
                    <i class="fa fa-bullhorn mr-3 text-dark fa-fw"></i>
                    Announcements
                </a>
            </li>
        </ul>


        <div class="mt-5 text-center">
            <button type="button" class="btn btn-dark"><a href="managerlogout.php" style="color:white;text-decoration: none;">Logout</a></button>
        </div>
    </div>
    <!-- End vertical navbar -->


    <!-- Page content holder -->
    <div class="page-content p-5" id="content">
        <!-- Toggle button -->
        <button id="sidebarCollapse" type="button" class="btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4"><i class="fa fa-bars mr-2"></i><small class="text-uppercase font-weight-bold">Menu</small></button>

        <!-- Demo content -->
        <h4 class="display-4 text-white text-center">Manage Staff</h4>

        <div class="separator"></div>
        <table class="table text-white table-border">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Staff Id</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Age</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $role = 1;
                $query = "SELECT * FROM staff WHERE role='$role'";
                $query_run = mysqli_query($conn, $query);
                $sno = 0;
                while ($row = mysqli_fetch_assoc($query_run)) {
                    $sno = $sno + 1;
                    echo "<tr>
                        <th>" . $sno . "</th>
                        <td>" . $row['sid'] . "</td>
                        <td>" . $row['fname'] . "</td>
                        <td>" . $row['lname'] . "</td>
                        <td>" . $row['age'] . "</td>
                        <td>" . $row['email'] . "</td>
                        <td>" . $row['phone'] . "</td>
                        <td> <button class='edit btn btn btn btn-outline-light' id=" . $sno . ">Edit</button></td>";
                ?>
                    <td><button class='edit btn btn btn btn-outline-light'>
                            <a style="text-decoration: none; color:red; font-weight:500;" href="../../backend/api/deletestaff.php?sid=<?php echo $row['sid']; ?>">Delete</a>
                        </button></td>
                    </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
        <?php
        $insert = false;
        $update = false;
        $delete = false;

        if (isset($_GET['delete'])) {
            $sno = $_GET['delete'];
            $delete = true;
            $sql = "DELETE FROM `staff` WHERE `sid` = $sno";
            $result = mysqli_query($conn, $sql);
        }
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (isset($_POST['savechanges'])) {
                // Update the record
                $sid = $_POST["sidEdit"];
                $fname = $_POST["fnameEdit"];
                $lname = $_POST["lnameEdit"];
                $age = $_POST["ageEdit"];
                $email = $_POST["emailEdit"];
                $mobile = $_POST["mobileEdit"];

                // Sql query to be executed
                $sql = "UPDATE staff SET fname = '$fname', lname = '$lname', age = '$age', email = '$email', phone = '$mobile' WHERE sid = $sid";
                $result = mysqli_query($conn, $sql);
                if ($result) {
                    $update = true;
                    echo "<script>window.onload = function() {
        if(!window.location.hash) {
            window.location = window.location + '#loaded';
            window.location.reload();
        }
    }</script>";
                }
            } else {
                echo "<script>alert('Failed to update!');</script>";
            }
        }
        ?>

        <div class="footer-copyright text-center text-light py-3 mt-5">&copy; Copyright DCSMS</div>




    </div>

    <!-- Edit Button Popup -->
    <!-- Edit Modal UI -->
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editModalLabel">Edit Staff</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <form action="managestaff.php" method="POST">
                    <div class="modal-body">
                        <input type="hidden" name="snoEdit" id="snoEdit">
                        <input type="hidden" class="form-control" id="sidEdit" name="sidEdit" aria-describedby="emailHelp">
                        <div class="form-group">
                            <label for="title">First Name</label>
                            <input type="text" pattern="^[a-zA-Z ]+$" required class="form-control" id="fnameEdit" name="fnameEdit" maxlength="20" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="title">Last Name</label>
                            <input type="text" pattern="^[a-zA-Z ]+$" required class="form-control" id="lnameEdit" name="lnameEdit" maxlength="20" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="title">Age</label>
                            <input type="text" pattern="^[0-9]+$" required class="form-control" id="ageEdit" name="ageEdit" maxlength="2" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="title">Email</label>
                            <input type="email" required class="form-control" id="emailEdit" name="emailEdit" maxlength="20" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="title">Mobile</label>
                            <input type="text" pattern="^[0-9]+$" required class="form-control" id="mobileEdit" name="mobileEdit" maxlength="10" aria-describedby="emailHelp">
                        </div>
                    </div>
                    <div class="modal-footer d-block mr-auto">
                        <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Close</button>
                        <button type="submit" name="savechanges" class="btn btn-outline-secondary">Save changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Edit Modal invoke -->
    <script>
        edits = document.getElementsByClassName('edit');
        Array.from(edits).forEach((element) => {
            element.addEventListener("click", (e) => {
                tr = e.target.parentNode.parentNode;
                sid = tr.getElementsByTagName("td")[0].innerText;
                fname = tr.getElementsByTagName("td")[1].innerText;
                lname = tr.getElementsByTagName("td")[2].innerText;
                age = tr.getElementsByTagName("td")[3].innerText;
                email = tr.getElementsByTagName("td")[4].innerText;
                mobile = tr.getElementsByTagName("td")[5].innerText;
                sidEdit.value = sid;
                fnameEdit.value = fname;
                lnameEdit.value = lname;
                ageEdit.value = age;
                emailEdit.value = email;
                mobileEdit.value = mobile;
                snoEdit.value = e.target.id;
                $('#editModal').modal('toggle');
            })
        })
    </script>
    <!-- End Edit Button Popup -->


    <!-- End demo content -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="../js/script.js"></script>
</body>

</html>