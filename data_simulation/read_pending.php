<?php
include 'connection.php';

$data = mysqli_query($connection, "SELECT * FROM simulation_pending");

if (mysqli_num_rows($data) > 0) {
    header('Content-Type: text/csv; charset=utf-8');
    header('Content-Disposition: attachment; filename=data.csv');
    $output = fopen("php://output", "w");
    fputcsv($output, array('id', 'date_time', 'tph', 'oer', 'ker', 'ser', 'oil_losses', 'kernel_losses', 'ffa_quality'));
    while ($row = mysqli_fetch_assoc($data)) {
        fputcsv($output, $row);
    }
    fclose($output);
} else {
    echo "Empty Data";
}

// Close the database connection when done
$connection->close();
