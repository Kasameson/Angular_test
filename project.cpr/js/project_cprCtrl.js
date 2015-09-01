var app = angular.module('project_cprCtrl',[])
//ดึงข้อมูลชั้นเรียน ม.1-6
    app.controller('show_stdCtrl', function ($scope, $http ) {
        $http.get('./php/select_class_student.php').success(function(data) {
            $scope.class_std = data;
        });

    });

//ดึงข้อมูลชั้นเรียนเช่น ม.1/1
    app.controller('list_stdCtrl', function($scope, $http, $location) {
            var url=$location.path();
            var newString= url.replace("/","");
            var a = newString.substr(13);

            $scope.class="?id="+a+"";
            //console.log(url);
            //console.log(newString);
            //console.log(a);
            $scope.class_std = newString.substr(13);
            $scope.urla = ("http://localhost/project.cpr/php/select_student.php"+$scope.class+"");
            //console.log($scope.urla);
            $http.get($scope.urla)
                .success(function (data) {
                    $scope.reg_std = data;
                }).error(function (data) {
                    alert("ไม่สามารถแสดงข้อมูลนักเรียนได้...!");
                })
        });

//ดึงข้อมูลรายชื่อนักเรียนรายห้องมาแลดง
        app.controller('class_stdCtrl', function($scope, $http, $location, $window) {
            var url = $location.path();
            var newString = url.replace("/", "");
            var class_s = newString.substring(20, 21);
            var room_s = newString.substr(28, 2);

            $scope.class_room_std = class_s + "/" + room_s;
            $scope.class_room = "?class=" + class_s + "&&room=" + room_s + "";
            //console.log(url);
            //console.log(newString);
            //console.log(class_s);
            //console.log(room_s);
            // $scope.a = newString.substr(13);
            $scope.urla = ("http://localhost/project.cpr/php/select_class_name_student.php" + $scope.class_room + "");
            //console.log($scope.urla);
            $http.get($scope.urla)
                .success(function (data) {
                    $scope.reg_name_std = data;
                });

//ลบข้อมูลรายชื่อนักเรียน
            $scope.remove = function (idx, id_reg_student, fname_reg_student) {
                var url = $location.path();
                $scope.id_reg_student = id_reg_student;
                $scope.fname_reg_student = fname_reg_student;
                console.log(url);
                //console.log($scope.id_reg_student);
                //console.log($scope.fname_reg_student);
                //alert($scope.id_reg_student),
                // LxNotificationService.confirm
                // (title, message, {ok: 'xx', cancel: 'yyy'}, function (res) {})
                if(confirm('ยืนยันการลบ คุณต้องการลบรายการนี้ [' + $scope.id_reg_student + ' ' + $scope.fname_reg_student + '] ใช่หรือไม่?')){
                        //alert($scope.fname_reg_student);
                            $scope.id_std = "?id_std=" + $scope.id_reg_student + ""
                            $scope.urla = ("http://localhost/project.cpr/php/delete_id_student.php" + $scope.id_std + "");
                            //console.log($scope.urla);
                            $http.get($scope.urla)
                                .success(function () {
                                    $window.location.reload();
                                    alert("ลบข้อมูลเรียบร้อยแล้ว...!");
                                }).error(function () {
                                    alert("ไม่สามารถลบรายชื่อนักเรียนได้...!");
                                })
                }
            }
        });


//ดึงข้อมูลนักเรียนขึ้นมาแก้ไข
        app.controller('edit_stdCtrl', function($scope, $http, $location, $window) {
            var url = $location.path();
            var newString = url.replace("/", "");
            var id_std = newString.substring(20);
            //var room_s = newString.substr(28, 2);

            //$scope.class_room_std = class_s + "/" + room_s;
            $scope.id_reg_std = "?id_std=" + id_std + "";
            console.log(url);
            console.log(newString);
            console.log(id_std);
            console.info(id_std);
            //console.log(room_s);
            // $scope.a = newString.substr(13);
            $scope.urla = ("http://localhost/project.cpr/php/select_student_edit.php" + $scope.id_reg_std + "");
            console.log($scope.urla);
            $http.get($scope.urla)
                  .success(function (data) {
                    $scope.edit_reg_std = data;
                    console.log(data);
                });
        });


        app.controller('detail_stdCtrl', function($scope, $http, $location, $window) {
            var url = $location.path();
            var newString = url.replace("/", "");
            var id_std = newString.substring(22);
            //var room_s = newString.substr(28, 2);

            //$scope.class_room_std = class_s + "/" + room_s;
            $scope.id_reg_std = "?id_std=" + id_std + "";
            console.log(url);
            console.log(newString);
            console.log(id_std);
            console.info(id_std);
            //console.log(room_s);
            // $scope.a = newString.substr(13);
            $scope.urla = ("http://localhost/project.cpr/php/select_student_edit.php" + $scope.id_reg_std + "");
            console.log($scope.urla);
            $http.get($scope.urla)
                .success(function (data) {
                    $scope.detail_std = data;
                    console.log(data);
                });
        });

   /*app.controller('ClassDetailCtrl', ['$scope', '$routeParams',
    function($scope, $routeParams) {
        $scope.class_reg_student = $routeParams.class_reg_student;
        $scope.room_reg_student = $routeParams.room_reg_student;
    }]);*/





