<?php
$hostname = "localhost";
$username = "id21635588_afafirmansyah";
$password = "1h3d5oaF!";
$database = "id21635588_smartd";

// Create connection
$connection = new mysqli($hostname, $username, $password, $database);

// Check connection
if ($connection->connect_error) {
    die('Database Connection Failed. Error: ' . $connection->connect_error);
}
