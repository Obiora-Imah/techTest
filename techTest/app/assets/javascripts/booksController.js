var fundThroughContoller = angular.module("fundThroughApp.controllers", []);


fundThroughContoller.controller("booksCtrl", [
  "$scope",
  "BookService",
  function($scope, service) {
  	$scope.init = function() {
      service.getBooks("books")
        .success(function(response) {
          console.log(response)
          $scope.books = response
        })
        .error(function() {
          // handle error later
        })
  	};
    $scope.init();
  }])

fundThroughContoller.controller("mainCtrl", [
  function() {
  }
]);