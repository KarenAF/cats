/* global angular */

(function() {
 angular.module('app').controller('catsCtrl', function($scope, $http) {
    $scope.setup = function() {
      $http.get('/v1/cats.json').then(function(response) {
        $scope.cats = response.data;
      });
    };
  }
}