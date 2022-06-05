<?php
    //Database settings
    $dbhost = $_SERVER['DBHOST']; //Database host
//    $dbhost = "172.16.1.50"; //local database
    $dbuser = $_SERVER['DBUSER']; //Database username
    $dbpassword = $_SERVER['DBPASS']; //Database Password. Leave blank for no password!
    $dbname = $_SERVER['DBNAME']; //Database Name;

    //General Settings
    $sitename = "Guestbook"; //Website Name;


    //Dont edit this line!
    $conn = mysqli_connect($dbhost, $dbuser, $dbpassword, $dbname);
?>
