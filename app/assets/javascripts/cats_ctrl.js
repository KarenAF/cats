(function() {
  angular.module('app').controller('catsCtrl', function($scope, $http) {
    $scope.setup = function() {
      $http.get('/v2/cats.json').then(function(response) {
        $scope.cats = response.data;
        console.log(response)
      });
    };

    $scope.setOrderAttribute = function(inputAttribute) {
      if (inputAttribute !== $scope.orderAttribute) { // clicked on a different button
        $scope.isOrderDescending = false;
      } else {
        $scope.isOrderDescending = !$scope.isOrderDescending;
      }
      $scope.orderAttribute = inputAttribute;
    };

    // $scope.cats = [{name: 'fd', breed: 'fdfd'}]    

    window.$scope = $scope;
  });
})();