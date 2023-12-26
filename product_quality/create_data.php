<?php
include 'connection.php';

// Get user input and sanitize
$sg_claybath = mysqli_real_escape_string($connection, $_POST["sg_claybath"]);
$restan_factory = mysqli_real_escape_string($connection, $_POST["restan_factory"]);
$minlet_vacuum = mysqli_real_escape_string($connection, $_POST["minlet_vacuum"]);
$silo_levels = mysqli_real_escape_string($connection, $_POST["silo_levels"]);

// Insert data into product_quality_pending table
$insert_pending_query = mysqli_query($connection, "INSERT INTO product_quality_pending (sg_claybath, restan_factory, minlet_vacuum, silo_levels) VALUES ('$sg_claybath', '$restan_factory', '$minlet_vacuum', '$silo_levels')");
