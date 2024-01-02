<?php
$hostname = "";
$username = "";
$password = "";
$database = "";
// Create connection
$connection = new mysqli($hostname, $username, $password, $database);

// Check connection
if ($connection->connect_error) {
	die('Database Connection Failed. Error: ' . $connection->connect_error);
}
