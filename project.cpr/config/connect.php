<?php
/**
 * Database Connection
 */
try {
    $db_conn = new PDO('mysql:host=localhost;dbname=cpr_db', 'root', 'root');
    $db_conn -> exec("SET CHARACTER SET utf8");
} catch (PDOException $e) {
    echo "Could not connect to database";
    exit;
}
?>