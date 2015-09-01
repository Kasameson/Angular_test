<?php
    require("../config/connect.php");


//echo json_encode($data);


if(isset($_REQUEST['id_std'])) {
    $id_std = $_REQUEST['id_std'];
}


    try {


            $sql = "DELETE FROM reg_student WHERE id_reg_student=".$id_std." ";
            $stmt = $db_conn->prepare($sql);

           if ($stmt) {

               // perform query
               $result = $stmt->execute();

               if ($result) {
                   echo json_encode($stmt->fetchAll());

               } else {
                   $error = $stmt->errorInfo();
                   $error_message = "Query failed with message: " . $error[2];
               }
           }


    } catch (PDOException $e) {
        echo $e->getMessage();
    }



?>