"use strict";

angular.module("fundThroughApp.bookService", []).factory("BookService", [
  "$http",
  function($http) {
    return {
      getBooks: function(url) {
        return  $http({
          method: "GET",
          url: url
        });
      }
    };
  }
]);