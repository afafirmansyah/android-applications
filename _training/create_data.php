<?php
include 'connection.php';

// Get user input and sanitize
$nama = mysqli_real_escape_string($connection, $_POST["nama"]);
$nik = mysqli_real_escape_string($connection, $_POST["nik"]);

// Insert data into users_training table
$insert_users_training = mysqli_query($connection, "INSERT INTO users_training (nama, nik) VALUES ('$nama', '$nik')");
