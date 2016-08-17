(function() {
  angular.module('app').controller('catsCtrl', function($scope, $http) {
    $scope.setup = function() {
      $http.get('/v2/cats.json').then(function(response) {
        $scope.cats = response.data;
      });
    };

    

    window.$scope = $scope;
  });
})();