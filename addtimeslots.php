<?php
include './config/connect.php';
if (!isset($_SESSION['email'])) {
    header('location: managerlogin.php');
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>PROJECT DCSMS</title>
    <link rel="shortcut icon" href="icon.png" type="image/png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-timepicker/0.5.2/css/bootstrap-timepicker.min.css">
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <!-- Vertical navbar -->
    <div class="vertical-nav bg-white" id="sidebar">
        <div class="py-4 px-3 mb-4 bg-light">
            <div class="media d-flex align-items-center">
                <img loading="lazy" src="pic.jpg" alt="..." width="80" height="80" class="mr-3 rounded-circle img-thumbnail shadow-sm">
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
        <h4 class="display-4 text-white text-center">Add Time Slots</h4>

        <div class="separator"></div>
        <div class="row text-white">
            <div class="col-lg-12 align-items-center justify-content-center">
                <form>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Day</label>
                        <div class="form-group">
                            <select class="form-control" id="shiftday">
                                <option>Sunday</option>
                                <option>Monday</option>
                                <option>Tuesday</option>
                                <option>Wednesday</option>
                                <option>Thursday</option>
                                <option>Friday</option>
                                <option>Saturday</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Category</label>
                        <div class="form-group">
                            <select class="form-control" id="shiftcategory">
                                <option>Line</option>
                                <option>GrabnGo</option>
                                <option>Dishroom</option>
                                <option>Kitchen</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Sub-Category</label>
                        <div class="form-group">
                            <select class="form-control" id="shiftsubcategory">
                                <option>Asian</option>
                                <option>Stir Fry</option>
                                <option>Latin</option>
                                <option>Deli/Subway</option>

                                <option>Pack</option>
                                <option>Supply</option>
                                <option>Cashier</option>

                                <option>Dishroom</option>
                                <option>Potroom</option>
                                <option>Tables</option>

                                <option>AM Prep</option>
                                <option>Pizza</option>
                                <option>PM Prep</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Start Time</label>
                        <div class="form-group">
                            <input type="email" class="form-control" id="inputEmail3">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-2 col-form-label">End Time</label>
                        <div class="form-group">
                            <input type="email" class="form-control" id="inputEmail3">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-white">Add Time Slot</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
        <div class="footer-copyright text-center text-light py-3 mt-5">&copy; Copyright DCSMS</div>
    </div>




    <!-- End demo content -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-timepicker/0.5.2/js/bootstrap-timepicker.min.js"></script>
    <script src="script.js"></script>
</body>

</html>