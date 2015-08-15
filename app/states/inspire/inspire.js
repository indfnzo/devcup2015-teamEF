(function() {

	// appends a new state to global states module
	angular.module("app.states.inspire", [
		// module dependencies
		"ui.router",
		"restangular"

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
	}).controller("InspireCtrl", function($scope, Restangular) {
		// define a local store for post
		$scope.post = {};

		$scope.submit = function() {
			// set current form as loading (todo)

			// submit current scope's post to api
			Restangular.all("posts").post($scope.post);
			$scope.post = {};
		};
	});
})();