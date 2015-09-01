var app = angular.module('cprCtrl',[])
    app.controller('cprCtrl', function ($scope, $http ) {
            $scope.url = "./php/insert_student.php";

        $scope.formsubmit = function(isValid) {
            if (isValid) {
                $http.post($scope.url, {
                    "idstd": $scope.idstd,
                    "tname": $scope.tname,
                    "std_fname": $scope.std_fname,
                    "std_lname": $scope.std_lname,
                    "sex_std": $scope.sex_std,
                    "ssn_std": $scope.ssn_std,
                    "birth_std": $scope.birth_std,
                    "address_std": $scope.address_std,
                    "province_std": $scope.province_std,
                    "district_std": $scope.district_std,
                    "subdistrict_std": $scope.subdistrict_std,
                    "postcode_reg_student": $scope.postcode_reg_student,
                    "tel_std": $scope.tel_std,
                    "email_std": $scope.email_std,
                    "semaster_std": $scope.semaster_std,
                    "class_std": $scope.class_std,
                    "room_std": $scope.room_std,
                    "old_school": $scope.old_school,
                    "address_std1": $scope.address_std1,
                    "fname_fastd": $scope.fname_fastd,
                    "prof_fstd": $scope.prof_fstd,
                    "fa_telstd": $scope.fa_telstd,
                    "fname_mastd": $scope.fname_mastd,
                    "prom_mstd": $scope.prom_mstd,
                    "ma_telstd": $scope.ma_telstd,
                })
                    .success(function (data, status) {
                        console.log(data);
                        $scope.status = status;
                        $scope.data = data;
                        $scope.result = data; // Show result from server in our <pre></pre> element
                        //console.log('success!');
                    })
                    .then(function () {
                        alert("Success..!");
                        return false;
                    })
            .error(function (data, status) {
                $scope.message = data;
                alert("Error...!");
            });

                /*$scope.reset = function () {
                    $scope.userData = {};
                    console.log('Reset Clicked');
                }*/
            } else {

                alert('Form is not valid');
            }
        }
});



app.controller('edit_std_Ctrl', function ($scope, $http ) {
    $scope.url = "./php/update_student.php";
    $scope.formsubmit_edit = function() {
         var a =  $http.post($scope.url, {
                "idstd": $scope.id_reg_student,
                "tname": $scope.title_reg_student,
                "std_fname": $scope.fname_reg_student,
                "std_lname": $scope.lname_reg_student,
                "sex_std": $scope.gender_reg_student,
                "ssn_std": $scope.ssn_reg_student,
                "birth_std": $scope.birthday_reg_student,
                "address_std": $scope.address_reg_student,
                "province_std": $scope.province_reg_student,
                "district_std": $scope.district_reg_student,
                "subdistrict_std": $scope.subdistrict_reg_student,
                "postcode_reg_student": $scope.postcode_reg_student,
                "tel_std": $scope.tell_reg_student,
                "email_std": $scope.email_reg_student,
                "semaster_std": $scope.semester_reg_student,
                "class_std": $scope.class_reg_student,
                "room_std": $scope.room_reg_student,
                "old_school": $scope.oldschool_reg_student,
                "address_std1": $scope.address1_reg_student,
                "fname_fastd": $scope.father_reg_student,
                "prof_fstd": $scope.prof_reg_student,
                "fa_telstd": $scope.father_tell_reg_student,
                "fname_mastd": $scope.mother_reg_student,
                "prom_mstd": $scope.prom_reg_student,
                "ma_telstd": $scope.mother_tell_reg_student,
            })
                .success(function (data, status) {
                    console.log(data);
                    $scope.status = status;
                    $scope.data = data;
                    $scope.result = data; // Show result from server in our <pre></pre> element
                    //console.log('success!');
                })
                /*.then(function () {
                    alert("Success..!");
                    return false;
                })*/
                .error(function (data, status) {
                    $scope.message = data;
                    alert("Error...!");
                });

            /*$scope.reset = function () {
             $scope.userData = {};
             console.log('Reset Clicked');
             }*/
            console.log(a);

    }

});

