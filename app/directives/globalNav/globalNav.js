(function() {

	// define a new directive for the global navigation interface
	angular.module("app.directives", []).directive("globalNav", function() {
		return {
			restrict: "E",
			templateUrl: "app/directives/globalNav/globalNav.html",
			controller: "GlobalNavCtrl"
		}

	}).controller("GlobalNavCtrl", function() {
	});
})();