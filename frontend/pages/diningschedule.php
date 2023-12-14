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
        <a href="index.php" class="nav-link text-dark">
          <i class="fa fa-window-restore mr-3 text-dark fa-fw"></i>
          Assign Shift
        </a>
      </li> -->
            <!-- <li class="nav-item">
        <a href="index.php" class="nav-link text-dark">
          <i class="fa fa-th-list mr-3 text-dark fa-fw"></i>
          Dining Dashboard
        </a>
      </li> -->
            <!-- <li class="nav-item">
        <a href="index.php" class="nav-link text-dark">
          <i class="fa fa-gift mr-3 text-dark fa-fw"></i>
          Announcements
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
        <h2 class="display-4 text-white text-center">Dining Schedule</h2>

        <div class="separator"></div>

        <div class="container-fluid">

            <div class="row mb-3">
                <div class="col-auto">
                    <button type="button" class="btn btn-white" onclick="showTable('1000')">Line</button>
                </div>
                <div class="col-auto">
                    <button type="button" class="btn btn-white" onclick="showTable('2000')">GrabnGo</button>
                </div>
                <div class="col-auto">
                    <button type="button" class="btn btn-white" onclick="showTable('3000')">Dishroom</button>
                </div>
                <div class="col-auto">
                    <button type="button" class="btn btn-white" onclick="showTable('4000')">Kitchen</button>
                </div>
            </div>

            <div class="container-fluid mt-3 text-white">
                <div class="table-content active-content" id="line-content">
                    <!-- Table for Line -->
                    <div class="table-responsive">
                        <table class="table table-bordered table-dark" id="myDataTable">
                            <!-- <table class="table text-white table-border"> -->
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Sub Category </th>
                                    <th>Week Day</th>
                                    <th>Time Slot </th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                        </table>
                    </div>
                </div>


            </div>
        </div>
        <div class="footer-copyright text-center text-light py-3 mt-5">&copy; Copyright DCSMS</div>

    </div>


    <!-- End demo content -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="../js/script.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        function ApplyShift(data, data2) {
            $('#schid').val(data2);
            $.ajax({
                type: 'post',
                url: 'http://localhost/WEBDEV/Project-DCSMS/backend/api/applyshift.php',
                data: {
                    schid: data,
                },
                success: function(responsedata) {
                    var response = JSON.parse(responsedata);
                    if (response.status.trim() == "success") {
                        toastr.success("Succesfully Applied Shift");
                        return;
                        $(document.querySelector('form')).reset();
                        window.location.reload();
                    } else {
                        toastr.error("Please contact Developer");
                    }
                }

            });
        }

        function showTable(data) {
            $('#myDataTable').DataTable().destroy();
            $('#myDataTable').DataTable({
                "ajax": {
                    "url": 'http://localhost/WEBDEV/Project-DCSMS/backend/api/staffaddshift.php',
                    "type": "POST",
                    "data": function() {
                        // You can send parameters here if needed
                        return {
                            CatId: data
                        };
                    }
                },
                "columns": [{
                        "data": "id"
                    },
                    {
                        "data": "category"
                    },
                    {
                        "data": "day"
                    },
                    {
                        "data": "timeslot"
                    },
                    {
                        "data": "action"
                    },
                ]
            });
        }
    </script>
</body>

</html>