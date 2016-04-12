<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "root", "Midterm_CIan");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt select query execution
$sql = "SELECT * FROM Sales";
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>Flavor</th>";
                echo "<th>Scoops</th>";
                echo "<th>Time</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            $flavorQuery = "SELECT Name FROM Flavors WHERE ID = ".$row['Flavor_id'];
            $flavorResult = mysqli_query($link, $flavorQuery);
            $flavor   = mysqli_fetch_row($flavorResult);
            echo "<tr>";
                echo "<td>" . $flavor[0] . "</td>";
                echo "<td>" . $row['Scoops_size'] . "</td>";
                echo "<td>" . $row['Time'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Close result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>