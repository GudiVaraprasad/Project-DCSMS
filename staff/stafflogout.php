<?php
require("../config/connect.php");
session_unset();
session_destroy();
header('location: stafflogin.php');
