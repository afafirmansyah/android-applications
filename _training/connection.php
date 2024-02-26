<?php
$hostname = "localhost";
$username = "id21895700_admin";
$password = "";
$database = "id21895700_mydatabase";

// Create connection
$connection = new mysqli($hostname, $username, $password, $database);

// Check connection
if ($connection->connect_error) {
	die('Database Connection Failed. Error: ' . $connection->connect_error);
}
