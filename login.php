<?php
include 'connection.php';

$email = mysqli_real_escape_string($connection, $_POST['email']);
$password = mysqli_real_escape_string($connection, $_POST['password']);

// Delete data from pending_approval table
$login_query = mysqli_query($connection, "SELECT * FROM user WHERE email='$email' AND password='$password'");

if (mysqli_num_rows($login_query) > 0) {
    $result = mysqli_fetch_array($login_query);
    echo $result['role'];
} else {
    echo "2";
}

// Close the database connection when done
$connection->close();
