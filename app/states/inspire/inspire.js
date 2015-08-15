(function() {

	// appends a new state to global states module
	angular.module("app.states.inspire", [
		// module dependencies
		"ui.router"

	// state config
	]).config(function($stateProvider) {

		// define state
		$stateProvider.state("inspire", {
			url: "/inspire",
			templateUrl: "app/states/inspire/inspire.html",
			controller: "InspireCtrl",
			resolve: {
				$title: function() { return "Inspire"; }
			}
		});

	// state controller
	}).controller("InspireCtrl", function() {
	});
})();