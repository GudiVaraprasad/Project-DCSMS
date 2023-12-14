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
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.css" />
    <!-- Include toastr CSS file -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">

    <!-- Include toastr JS file -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
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
        <h4 class="display-4 text-white text-center">Announcements</h4>

        <div class="separator"></div>
        <div class="row text-white">
            <div class="col-lg-6">
                <form>
                    <div class="form-group">
                        <label for="posttype">Post Type</label>
                        <select class="form-control" id="posttype" name="posttype">
                            <option value="Announcement">Announcement</option>
                            <option value="Warning">Warning</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject">
                    </div>
                    <div class="form-group">
                        <label for="text">Text</label>
                        <textarea class="form-control" id="text" name="text" rows="5" placeholder="Message"></textarea>
                    </div>
                    <button type="button" id="submitbtn" class="btn btn-white">Submit</button>
                </form>
            </div>
        </div>
        <div class="footer-copyright text-center text-light py-3 mt-5">&copy; Copyright DCSMS</div>
    </div>





    <!-- End demo content -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-timepicker/0.5.2/js/bootstrap-timepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="../js/script.js"></script>

    <script>
        $('#submitbtn').on('click', function() {
            var posttype = $('#posttype').val();
            var subject = $('#subject').val();
            var text = $('#text').val();
            $.ajax({
                type: 'post',
                url: 'http://localhost/WEBDEV/Project-DCSMS/backend/api/announce.php',
                data: {
                    posttype: posttype,
                    subject: subject,
                    text: text,
                },
                success: function(responsedata) {
                    var response = JSON.parse(responsedata);
                    console.log(response);
                    if (response.status.trim() == "success") {
                        toastr.success("Notified Successfully!");
                        return;
                        $(document.querySelector('form')).reset();
                    } else {
                        toastr.error("Error");
                    }
                }
            })
        })
    </script>
</body>

</html>