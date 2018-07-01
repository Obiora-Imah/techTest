"use strict";
angular.module("fundThroughApp.route", ["ui.router"]).config([
  "$locationProvider",
  "$stateProvider",
  function($locationProvider, $stateProvider) {
    if (window.history && window.history.pushState) {
      $locationProvider.html5Mode({enabled: true, requireBase: false});
    }

    var index = {
      name: "books",
      url: "/",
      parent: "main",
      controller: "booksCtrl",
      templateUrl: "view/index.html"
    };

    $stateProvider.state(index);
  }
])