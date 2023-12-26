<?php
$hostname = "103.49.238.182";
$username = "root";
$password = "Aliadi06";
$database = "Data Mill";
// Create connection
$connection = new mysqli($hostname, $username, $password, $database);

// Check connection
if ($connection->connect_error) {
	die('Database Connection Failed. Error: ' . $connection->connect_error);
}
