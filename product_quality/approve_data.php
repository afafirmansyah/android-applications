<?php
include 'connection.php';

$id = mysqli_real_escape_string($connection, $_POST['id']);

// Retrieve data from product_quality_pending
$pending_data_query = mysqli_query($connection, "SELECT * FROM product_quality_pending WHERE id='$id'");
$pending_data = mysqli_fetch_assoc($pending_data_query);

if ($pending_data) {
    // Move data to product_quality_approve table
    $insert_approve_query = mysqli_query($connection, "INSERT INTO product_quality_approve (sg_claybath, restan_factory, minlet_vacuum, silo_levels) 
                                                           VALUES ('{$pending_data['sg_claybath']}', '{$pending_data['restan_factory']}','{$pending_data['minlet_vacuum']}', '{$pending_data['silo_levels']}')");

    if ($insert_approve_query) {
        // Delete data from product_quality_pending table after successful insertion
        $delete_pending_query = mysqli_query($connection, "DELETE FROM product_quality_pending WHERE id='$id'");
        echo "1";
    } else {
        echo "2";
    }
}


// Close the database connection when done
$connection->close();
