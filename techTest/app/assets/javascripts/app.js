"use strict";
angular.module("fundThroughApp", [
	"templates",
  "ui.router",
  "fundThroughApp.route",
  "fundThroughApp.controllers",
  "fundThroughApp.bookService",
]).config([
  "$locationProvider",
  "$provide",
  "$stateProvider",
  "$urlMatcherFactoryProvider",
  function($locationProvider, $provide, $stateProvider, $urlMatcherFactoryProvider) {
    if (window.history && window.history.pushState) {
      $locationProvider.html5Mode({enabled: true, requireBase: false});
    }

    $urlMatcherFactoryProvider.strictMode(false);

    var main = {
      name: "main",
      templateUrl: "layouts/layout.html"
    };

    $stateProvider.state(main);
  }
]);
