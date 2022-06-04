<?php
    //Database settings
    $dbhost = "10.20.96.3"; //Database host
//    $dbhost = "172.16.1.50"; //local database
    $dbuser = "parsa"; //Database username
    $dbpassword = "]l~BtDsf>}q8h4Zr"; //Database Password. Leave blank for no password!
    $dbname = "php_guestbook"; //Database Name;

    //General Settings
    $sitename = "Guestbook"; //Website Name;


    //Dont edit this line!
    $conn = mysqli_connect($dbhost, $dbuser, $dbpassword, $dbname);
?>
