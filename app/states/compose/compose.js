(function() {

	// appends a new state to global states module
	angular.module("app.states.compose", [
		// module dependencies
		"ui.router",
		"restangular"

	// state config
	]).config(function($stateProvider) {

		// define state
		$stateProvider.state("compose", {
			url: "/inspire/compose",
			templateUrl: "app/states/compose/compose.html",
			controller: "ComposeCtrl",
			resolve: {
				$title: function() { return "Compose a Story"; }
			}
		});

	// state controller
	}).controller("ComposeCtrl", function($scope, Restangular, $window) {
		// define a local store for the post currently being written
		$scope.post = {};

		$scope.submit = function() {
			// set current form as loading (todo)

			// submit current scope's post to api
			$scope.post["content"] = $window.unescape($window.encodeURIComponent($scope.post["content"]));
			Restangular.all("posts").post($scope.post);
			$scope.post = {};
		};
	});
})();