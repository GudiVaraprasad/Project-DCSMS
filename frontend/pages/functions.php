
<?php
include '../../backend/config/connect.php';

function checkSession() {
    return isset($_SESSION['email']);
}

function getSessionData($key) {
    return $_SESSION[$key] ?? '';
}

?>