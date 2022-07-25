<?php  
$conn = mysqli_connect("localhost", "root", "", "cart_system");
    if(!$conn){
        die("connection error :" . mysqli_connect_error());
    }

    // start session
    session_start();
?>