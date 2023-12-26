<?php
include 'connection.php';

// Get user input and sanitize
$tph = mysqli_real_escape_string($connection, $_POST["tph"]);
$oer = mysqli_real_escape_string($connection, $_POST["oer"]);
$ker = mysqli_real_escape_string($connection, $_POST["ker"]);
$ser = mysqli_real_escape_string($connection, $_POST["ser"]);
$oil_losses = mysqli_real_escape_string($connection, $_POST["oil_losses"]);
$kernel_losses = mysqli_real_escape_string($connection, $_POST["kernel_losses"]);
$ffa_quality = mysqli_real_escape_string($connection, $_POST["ffa_quality"]);

// Insert data into simulation_pending table
$insert_pending_query = mysqli_query($connection, "INSERT INTO simulation_pending (tph, oer, ker, ser, oil_losses, kernel_losses, ffa_quality) VALUES ('$tph', '$oer', '$ker', '$ser', '$oil_losses', '$kernel_losses', '$ffa_quality')");
