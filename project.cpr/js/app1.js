var app = angular.module('app1', ['mng_studentCtrl'])


    .controller('TabsDemoCtrl', function ($scope, $window) {
        $scope.tabs = [
          { title:'Dynamic Title 1', content:'Dynamic content 1' },
          { title:'Dynamic Title 2', content:'Dynamic content 2', disabled: true }
        ];

        $scope.alertMe = function() {
          setTimeout(function() {
            $window.alert('You\'ve selected the alert tab!');
          });
        };
    });



/*.controller('mng_studentCtrl', function($scope, $locale) {
  $scope.beers = [0, 1, 2, 3, 4, 5, 6];
  if ($locale.id == 'en-us') {
    $scope.beerForms = {
      0: 'no beers',
      one: '{} beer',
      other: '{} beers'
    };
  } else {
    $scope.beerForms = {
      0: 'žiadne pivo',
      one: '{} pivo',
      few: '{} pivá',
      other: '{} pív'
    };
  }
});*/
