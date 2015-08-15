(function() {

	// appends a new state to global states module
	angular.module("app.states.home", [
		// module dependencies
		"ui.router"

	// state config
	]).config(function($stateProvider) {

		// define state
		$stateProvider.state("home", {
			url: "/",
			templateUrl: "app/states/home/home.html",
			controller: "HomeCtrl",
			resolve: {
				$title: function() { return "Home"; }
			}
		});

	// state controller
	}).controller("HomeCtrl", function() {
	});
})();