<?php
require("../config/connect.php");

    try {
    $sql = "SELECT * FROM test_img";
    $stmt = $db_conn->prepare($sql);

    if($stmt) {

    // perform query
    $result = $stmt->execute();

    if($result) {
    echo json_encode($stmt->fetchAll());

    } else {
    $error = $stmt->errorInfo();
    $error_message = "Query failed with message: " . $error[2];
    }}


    } catch(PDOException $e) {
    echo $e->getMessage();
    }
?>
