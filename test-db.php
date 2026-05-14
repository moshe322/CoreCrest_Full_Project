<?php

include("config/db.php");

if($conn){
    echo "Database Connected";
}else{
    echo "Connection Failed";
}

?>
