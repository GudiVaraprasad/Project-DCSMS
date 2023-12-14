<?php
include '../../backend/config/connect.php';
if (!isset($_SESSION['sid'])) {
    header('location: ./stafflogin.php');
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
                <a href="staff.php" class="nav-link text-dark">
                    <i class="fa fa-bell mr-3 text-dark fa-fw"></i>
                    My Notifications
                </a>
            </li>
        </ul>
        <br>


        <p class="text-dark font-weight-bold text-uppercase px-3 small pb-4 mb-0">Operations</p>

        <ul class="nav flex-column bg-white mb-0">
            <li class="nav-item">
                <a href="diningschedule.php" class="nav-link text-dark">
                    <i class="fa fa-calendar-plus-o mr-3 text-dark fa-fw"></i>
                    Dining Schedule
                </a>
            </li>
            <li class="nav-item">
                <a href="staffshifts.php" class="nav-link text-dark bg-light">
                    <i class="fa fa-tasks mr-3 text-dark fa-fw"></i>
                    My Shifts
                </a>
            </li>
            <!-- <li class="nav-item">
                <a href="staffapplyshift.php" class="nav-link text-dark">
                    <i class="fa fa-calendar-plus-o mr-3 text-dark fa-fw"></i>
                    Apply Shift
                </a>
            </li> -->
        </ul>


        <div class="mt-5 text-center">
            <button type="button" class="btn btn-dark"><a href="stafflogout.php" style="color:white;text-decoration: none;">Logout</a></button>
        </div>
    </div>
    <!-- End vertical navbar -->


    <!-- Page content holder -->
    <div class="page-content p-5" id="content">
        <!-- Toggle button -->
        <button id="sidebarCollapse" type="button" class="btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4"><i class="fa fa-bars mr-2"></i><small class="text-uppercase font-weight-bold">Menu</small></button>

        <!-- Demo content -->
        <h2 class="display-4 text-white text-center">My Shifts</h2>

        <div class="separator"></div>
        <table class="table text-white table-border">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Day</th>
                    <th>Time Slot</th>
                    <th>Category</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $query = "SELECT * FROM schedule LEFT JOIN category ON schedule.cid = category.cid WHERE schedule.sid = '" . $_SESSION['sid'] . "'";

                $query_run = mysqli_query($conn, $query);
                $sno = 0;
                while ($row = mysqli_fetch_assoc($query_run)) {
                    $sno = $sno + 1;
                    echo "<tr>
                <th>" . $sno . "</th>
                <td>" . $row['day'] . "</td>
                <td>" . $row['starttime'] . "-" . $row['endtime'] . "</td>
                <td>" . $row['cname'] . "</td>";
                }
                ?>
            </tbody>
        </table>

        <div class="footer-copyright text-center text-light py-3 mt-5">&copy; Copyright DCSMS</div>




    </div>

    <!-- End demo content -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="../js/script.js"></script>
</body>

</html>