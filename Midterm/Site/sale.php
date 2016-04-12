<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "root", "Midterm_CIan");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// Apparently integers do not need to be espaced. http://stackoverflow.com/questions/12053375/do-integers-need-to-be-escaped
$flavor = intval($_GET['flavor']);
$scoops = intval($_GET['scoops']);
$time = date("Y-m-d H:i:s");

// attempt insert query execution
$sql = "INSERT INTO Sales (Flavor_id, Scoops_size, Time) VALUES ('$flavor', '$scoops', '$time')";
if(mysqli_query($link, $sql)){
    echo "Records added successfully. Time: " . $time;
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
mysqli_close($link);
?>