(function() {
  angular.module('app').controller('catsCtrl', function($scope, $http) {
    $scope.setup = function() {
      $http.get('/v2/cats.json').then(function(response) {
        $scope.cats = response.data;
        console.log(response)
      });
    };

    // $scope.cats = [{name: 'fd', breed: 'fdfd'}]    

    window.$scope = $scope;
  });
})();