<?php
include 'connection.php';

$id = mysqli_real_escape_string($connection, $_POST['id']);

// Retrieve data from simulation_pending
$pending_data_query = mysqli_query($connection, "SELECT * FROM simulation_pending WHERE id='$id'");
$pending_data = mysqli_fetch_assoc($pending_data_query);

if ($pending_data) {
    // Move data to simulation_approve table
    $insert_approve_query = mysqli_query($connection, "INSERT INTO simulation_approve (tph, oer, ker, ser, oil_losses, kernel_losses, ffa_quality) 
                                                           VALUES ('{$pending_data['tph']}', '{$pending_data['oer']}', '{$pending_data['ker']}', '{$pending_data['ser']}', '{$pending_data['oil_losses']}', '{$pending_data['kernel_losses']}', '{$pending_data['ffa_quality']}')");

    if ($insert_approve_query) {
        // Delete data from simulation_pending table after successful insertion
        $delete_pending_query = mysqli_query($connection, "DELETE FROM simulation_pending WHERE id='$id'");
        echo "1";
    } else {
        echo "2";
    }
}

// Close the database connection when done
$connection->close();
