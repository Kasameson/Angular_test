<?php
    require("../config/connect.php");


    $post_date = file_get_contents("php://input");
    $data = json_decode($post_date);

    @$id_reg_student = $data->idstd;
    @$title_reg_student = $data->tname;
    @$fname_reg_student = $data->std_fname;
    @$lname_reg_student = $data->std_lname;
    @$gender_reg_student = $data->sex_std;
    @$ssn_reg_student = $data->ssn_std;
    @$birthday_reg_student = $data->birth_std;
    @$address_reg_student = $data->address_std;
    @$province_reg_student = $data->province_std;
    @$district_reg_student = $data->district_std;
    @$subdistrict_reg_student = $data->subdistrict_std;
    @$postcode_reg_student = $data->postcode_reg_student;
    @$tell_reg_student = $data->tel_std;
    @$email_reg_student = $data->email_std;
    @$semester_reg_student = $data->semaster_std;
    @$class_reg_student = $data->class_std;
    @$room_reg_student = $data->room_std;
    @$oldschool_reg_student = $data->old_school;
    @$address1_reg_student = $data->address_std1;
    @$father_reg_student = $data->fname_fastd;
    @$prof_reg_student = $data->prof_fstd;
    @$father_tell_reg_student = $data->fa_telstd;
    @$mother_reg_student = $data->fname_mastd;
    @$prom_reg_student = $data->prom_mstd;
    @$mother_tell_reg_student = $data->ma_telstd;
    //@$password_reg_student = $data->ssn_std;

echo json_encode($data);
if(isset($id_reg_student)) {
    $errors= array();
    if(empty($errors)==true){

    try {
        $statement = $db_conn->prepare("UPDATE reg_student SET
                title_reg_student=".$title_reg_student.",
                fname_reg_student=".$fname_reg_student.",
                lname_reg_student=".$lname_reg_student.",
                gender_reg_student=".$gender_reg_student.",
                ssn_reg_student=".$ssn_reg_student.",
                birthday_reg_student=".$birthday_reg_student.",
                address_reg_student=".$address_reg_student.",
                province_reg_student=".$province_reg_student.",
                district_reg_student=".$district_reg_student.",
                subdistrict_reg_student=".$subdistrict_reg_student.",
                postcode_reg_student=".$postcode_reg_student.",
                tell_reg_student=".$tell_reg_student.",
                email_reg_student=".$email_reg_student.",
                semester_reg_student=".$semester_reg_student.",
                class_reg_student=".$class_reg_student.",
                room_reg_student=".$room_reg_student.",
                oldschool_reg_student=".$oldschool_reg_studen.",
                address1_reg_student=".$address1_reg_student.",
                father_reg_student=".$father_reg_student.",
                prof_reg_student=".$prof_reg_student.",
                father_tell_reg_student=".$father_tell_reg_student.",
                mother_reg_student=".$mother_reg_student.",
                prom_reg_student=".$prom_reg_student.",
                mother_tell_reg_student=".$mother_tell_reg_student."

                WHERE id_reg_student=".$id_reg_student." ");

        $statement->execute();

    } catch (PDOException $e) {
        echo $e->getMessage();
    }
    }else{
        print_r($errors);
    }
}
?>