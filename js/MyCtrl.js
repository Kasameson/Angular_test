//inject angular file upload directives and service.
//inject angular file upload directives and service.
var app = angular.module('MyCtrl', ['angularFileUpload']);

app.controller('MyCtrl',['$scope', '$upload', function($scope, $upload, $http) {

    $scope.onFileSelect = function($files) {
        var file = $files[0];

        console.log(file.type.indexOf('image'));

        if (file.type.indexOf('image') == -1) {
            $scope.error = 'image extension not allowed, please choose a JPEG or PNG file.'
        }
        if (file.size > 2097152) {
            $scope.error = 'File size cannot exceed 2 MB';
        }

//console.log($scope.fname);
         $scope.upload_img = function () {
            $scope.upload = $upload.upload({
                url: "./php/upload.php",
                data: {fname: $scope.fname,test: $scope.test},
                method: 'POST',
                file: file
            }).success(function (data, status, headers, config) {
                $scope.message = data;
                alert("Success");

            }).error(function (data, status) {
            $scope.message = data;
            alert("Error...!");
        });
        }
    }
}]);

app.controller('test_img', function ($scope, $http, $timeout ) {
    load();
    function load() {
        $http.get('./php/test_img.php').success(function (data) {
            //console.log(data);
            $scope.test_img = data;
            $timeout(function(){
                load();
            },1000);
        });
    }
});
