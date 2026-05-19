<?php
require_once __DIR__ . '/config/db.php';

if ($conn) {
    echo "Database connected successfully<br>";
}

$result = mysqli_query($conn, "SHOW TABLES");

if ($result) {
    echo "Tables found:<br>";

    while ($row = mysqli_fetch_array($result)) {
        echo $row[0] . "<br>";
    }
} else {
    echo "Query failed: " . mysqli_error($conn);
}
?>
