<?php
$serverName = "LAPTOP-TD6TOGV7\SQLEXPRESS";
$connectionOptions = array(
    "Database" => "Project",
    "Uid" => "",
    "PWD" => ""
);

// Establishes the connection
$conn = sqlsrv_connect($serverName, $connectionOptions);

// Check connection
if (!$conn) {
    die(print_r(sqlsrv_errors(), true));
}

// Perform SQL operations using $conn

// Close the connection
?>