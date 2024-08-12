<?php
    // Database connection parameters
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "malcolmphotography";

    // Create a connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Fetch image data from the database
    $sql = "SELECT * FROM wedding";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $image = $row['imagepath'];
            $imagePath =   $image;

            
            echo "<img src='$imagePath'  width='300'>";
        }
    } else {
        echo "No images found.";
    }

    $conn->close();
    ?>