(function() {

	// define a new directive for the home navigation interface
	angular.module("app.directives.homeNav", []).directive("homeNav", function() {
		return {
			restrict: "E",
			templateUrl: "app/directives/homeNav/homeNav.html",
			controller: "HomeNavCtrl"
		}

	}).controller("HomeNavCtrl", function() {
	});
})();