<?php
include 'connection.php';

$id = mysqli_real_escape_string($connection, $_POST['id']);

// Delete data from pending_approval table
$delete_pending_query = mysqli_query($connection, "DELETE FROM simulation_pending WHERE id='$id'");

if ($delete_pending_query) {
    echo "1";
} else {
    echo "2";
}

// Close the database connection when done
$connection->close();
