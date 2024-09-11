<?php
    $dbhost= 'localhost';
    $dbuser= 'django_login';
    $dbpass= 'django_login@123';
    $dbname = 'calendar';
    $conn = new mysqli($dbhost, $dbuser, $dbpass ,$dbname);
    //Database connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

?>