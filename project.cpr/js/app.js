var app = angular.module('app', [
 'ngRoute',
'cprCtrl',
'project_cprCtrl',
'MyCtrl',
'initialValue'
 /* 'lumx',

    'app.controller.chart',

    /*'app.controller.SettingsCtrl',
    'app.service.Config',
    'app.controller.UsersCtrl',
    'app.controller.UserNewCtrl',
    'app.controller.UserEditCtrl',
    'app.service.UserEditServ',
    'app.controller.MainCtrl',
    'app.service.MainServ',*/
    /*'app.filter.toThaiDate',
    'mng_studentCtrl'*/
])


        app.config(function ($routeProvider) {

            //$urlRouterProvider.otherwise('/');

            $routeProvider
                .when('/', {
                    //url: '/',
                    templateUrl: 'teacher/main.html'
                    //controller: 'MainCtrl'
                })
                .when('/show_student', {
                    templateUrl: 'teacher/show_student.html',
                    controller: 'show_stdCtrl'
                })
                .when('/add_student', {
                    //url: '/settings',
                    templateUrl: 'teacher/add_student.html',
                    //controller: 'SettingsCtrl'
                })
                .when('/list_student/:class_reg_student', {
                    //url: '/new-user',
                    templateUrl: 'teacher/list_student.html',
                    //controller: 'class_stdCtrl'
                })
                .when('/class_student/:class_reg_student&&:room_reg_student', {
                    //url: '/user-edit/:username',
                    templateUrl: 'teacher/class_student.html',
                    //controller: 'PhoneDetailCtrl'
                })
                .when('/detail_student/:id_reg_student', {
                    //url: '/user-edit/:username',
                    templateUrl: 'teacher/detail_student.html',
                   // controller: 'GetUsersCtrl'
                })
                .when('/edit_student/:id_reg_student', {
                    //url: '/user-edit/:username',
                    templateUrl: 'teacher/edit_student.html',
                    //controller: 'LineCtrl'
                })
                .when('/add_teacher', {
                    //url: '/user-edit/:username',
                    templateUrl: 'teacher/add_teacher.html',
                    //controller: 'LineCtrl'
                })
                .when('/list_teacher', {
                    //url: '/user-edit/:username',
                    templateUrl: 'teacher/list_teacher.html',
                    //controller: 'LineCtrl'
                })
                .when('/upload', {
                    //url: '/user-edit/:username',
                    templateUrl: 'upload.html',
                    //controller: 'MyCtrl'
                })
        });
