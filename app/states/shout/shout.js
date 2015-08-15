(function() {

	// appends a new state to global states module
	angular.module("app.states.shout", [
		// module dependencies
		"ui.router"

	// state config
	]).config(function($stateProvider) {

		// define state
		$stateProvider.state("shout", {
			url: "/shout",
			templateUrl: "app/states/shout/shout.html",
			controller: "ShoutCtrl",
			resolve: {
				$title: function() { return "Shout"; }
			}
		});

	// state controller
	}).controller("ShoutCtrl", function() {
	});
})();