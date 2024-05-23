<?php
$connection=mysqli_connect("localhost","root","","foodfilter");

if($connection ->connect_error) {
    die("Connection failed: " .$conn->connect_error);
}
?>