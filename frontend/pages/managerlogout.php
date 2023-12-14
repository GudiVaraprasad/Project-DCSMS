<?php
require("../../backend/config/connect.php");
session_unset();
session_destroy();
header('location: managerlogin.php');
