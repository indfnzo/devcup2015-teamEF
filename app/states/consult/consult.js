(function() {

	// appends a new state to global states module
	angular.module("app.states.consult", [
		// module dependencies
		"ui.router"

	// state config
	]).config(function($stateProvider) {

		// define state
		$stateProvider.state("consult", {
			url: "/consult",
			templateUrl: "app/states/consult/consult.html",
			controller: "ConsultCtrl",
			resolve: {
				$title: function() { return "Consult"; }
			}
		});

	// state controller
	}).controller("ConsultCtrl", function() {
	});
})();