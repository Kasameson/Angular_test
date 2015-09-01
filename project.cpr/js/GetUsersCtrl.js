angular.module('app.controller.GetUsers', [])
 .controller('GetUsersCtrl', function ($scope, $http, LxProgressService) {

          $http.get('./config/member.php').success(function(data) {
            $scope.member = data;
          });

      $scope.show = function () {
        //var select = $scope.test;
          LxProgressService.linear.show('#5fa2db', '#progress');
            $http.get('./config/connect_db.php').success(function(data) {
               $scope.orders = data;
               LxProgressService.linear.hide();
             });
           };
       });
