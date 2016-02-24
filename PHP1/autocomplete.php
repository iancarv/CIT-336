<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "root", "Pace");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$query = mysqli_real_escape_string($link, $_POST['q']);

// attempt insert query execution
$sql = "SELECT * from `Students` WHERE `Name` LIKE ('$query%')";

$result = mysqli_query($link, $sql);

if($result){
    if (mysqli_num_rows($result) > 0) {
	    while($row = mysqli_fetch_assoc($result)) {
	        $option = $row["Name"];
	        echo "<option value='$option'>";
	    }
	}	 
} 
else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
mysqli_close($link);
?>