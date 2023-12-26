<?php
include 'connection.php';

$id = mysqli_real_escape_string($connection, $_POST['id']);

// Retrieve data from mill_performance_pending
$pending_data_query = mysqli_query($connection, "SELECT * FROM mill_performance_pending WHERE id='$id'");
$pending_data = mysqli_fetch_assoc($pending_data_query);

if ($pending_data) {
    // Move data to mill_performance_approve table
    $insert_approve_query = mysqli_query($connection, "INSERT INTO mill_performance_approve (lorry_numbers, lorry_capacity, ph_water, tds_water, phospate_water) 
                                                           VALUES ('{$pending_data['lorry_numbers']}', '{$pending_data['lorry_capacity']}', '{$pending_data['ph_water']}', '{$pending_data['tds_water']}', '{$pending_data['phospate_water']}')");

    if ($insert_approve_query) {
        // Delete data from mill_performance_pending table after successful insertion
        $delete_pending_query = mysqli_query($connection, "DELETE FROM mill_performance_pending WHERE id='$id'");
        echo "1";
    } else {
        echo "2";
    }
}

// Close the database connection when done
$connection->close();
