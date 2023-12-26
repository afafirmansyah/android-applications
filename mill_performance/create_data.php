<?php
include 'connection.php';

// Get user input and sanitize
$lorry_numbers = mysqli_real_escape_string($connection, $_POST["lorry_numbers"]);
$lorry_capacity = mysqli_real_escape_string($connection, $_POST["lorry_capacity"]);
$ph_water = mysqli_real_escape_string($connection, $_POST["ph_water"]);
$tds_water = mysqli_real_escape_string($connection, $_POST["tds_water"]);
$phospate_water = mysqli_real_escape_string($connection, $_POST["phospate_water"]);

// Insert data into mill_performance_pending table
$insert_pending_query = mysqli_query($connection, "INSERT INTO mill_performance_pending (lorry_numbers, lorry_capacity, ph_water, tds_water, phospate_water) VALUES ('$lorry_numbers', '$lorry_capacity', '$ph_water', '$tds_water', '$phospate_water')");
