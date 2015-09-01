angular.module('app.controller.UserNewCtrl', [
    'app.service.UserNewServ'
])
    .controller('UserNewCtrl', function ($scope, $state, UserNewServ) {

        $scope.save = function () {
            if (!$scope.username) {
                alert('��س��кت��ͼ����ҹ');
            } else if (!$scope.password) {
                alert('��س��к����ʼ�ҹ');
            } else {

                // save
                UserNewServ.save($scope.username, $scope.password)
                    .then(function () {
                        // success
                        alert('Success');
                        $state.go('users');

                    }, function (err) {
                        alert('Error');
                        console.log(err);
                    })

            }
        }

    });