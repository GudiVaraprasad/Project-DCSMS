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
        <a href="index.php" class="nav-link text-dark bg-light">
          <i class="fa fa-pencil-square-o mr-3 text-dark fa-fw"></i>
          Work Schedule
        </a>
      </li>
      <li class="nav-item">
        <a href="index.php" class="nav-link text-dark">
          <i class="fa fa-bar-chart mr-3 text-dark fa-fw"></i>
          Manage Staff
        </a>
      </li>

      <li class="nav-item">
        <a href="index.php" class="nav-link text-dark">
          <i class="fa fa-window-restore mr-3 text-dark fa-fw"></i>
          Assign Shift
        </a>
      </li>
      <!-- <li class="nav-item">
        <a href="index.php" class="nav-link text-dark">
          <i class="fa fa-th-list mr-3 text-dark fa-fw"></i>
          Dining Dashboard
        </a>
      </li> -->
      <li class="nav-item">
        <a href="index.php" class="nav-link text-dark">
          <i class="fa fa-gift mr-3 text-dark fa-fw"></i>
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
    <h2 class="display-4 text-white text-center">Dining Commons Staff Management System</h2>

    <div class="separator"></div>
    <div class="row text-white">
      <div class="col-lg-6">



        <p class="lead">The Dining Commons Staff Management System, or Project DCSMS, is a comprehensive software program created to tackle the particular difficulties encountered in staff task management in dining commons.</p>

      </div>
      <div class="col-lg-6">


        <p class="lead">The main objectives of this project are to automate the process of assigning tasks, optimize staff duties according to their availability, minimize manual planning efforts, and enhance staff members' real-time communication. DCSMS attempts to optimize operations and improve the overall dining experience in the setting of dining commons, where productivity and efficient task management are critical.</p>
      </div>
    </div>
    <div class="mt-3">
      <img src="img2.png" width="1000rem" height="auto" class="rounded mx-auto d-block" alt="...">
    </div>
    <!-- <div class="mt-5 text-center">
<button type="button" class="btn btn-dark">Know More
	<i class="fa fa-arrow-right mr-1 text-light fa-fw"></i>
</button>
</div> -->

    <div class="footer-copyright text-center text-light py-3 mt-5">&copy; Copyright DCSMS</div>

  </div>




  <!-- End demo content -->

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  <script src="script.js"></script>
</body>

</html>