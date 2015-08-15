(function() {

	// appends a new state to global states module
	angular.module("app.states.shout", [
		// module dependencies
		"ui.router",
		"restangular"

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
	}).controller("ShoutCtrl", function($scope, Restangular, $timeout) {
		// define a local store for currently existing shouts in database
		$scope.lastShout = 0;
		$scope.shouts = [];

		// function for fetching new content and appending them to store
		function beginResyncCycle() {
			Restangular.all("new_shouts/" + $scope.lastShout).getList().then(function(new_shouts) {
				// append all new shouts to store
				$scope.shouts.push.apply($scope.shouts, new_shouts);

				// update last shout to be the highest id in the set
				if (new_shouts.length > 0) {
					$scope.lastShout = Math.max.apply(null, new_shouts.map(function(new_shout) {
						// return value of key 'id' as int
						return parseInt(new_shout["id"]);
					}));
				}

				// restart resync cycle after 5s
				$timeout(function() {
					beginResyncCycle();
				}, 5000);
			}, function() {
				// error callback: immediately retry fetching new content
				beginResyncCycle();
			});
		}

		// initialize resync cycle
		beginResyncCycle();

		// define a local store for the shout currently being written
		$scope.shout = {};

		$scope.submit = function() {
			// set current form as loading (todo)

			// submit current scope's shout to api
			Restangular.all("shouts").post($scope.shout);
			alias = $scope.shout["author"];
			$scope.shout = {};
			$scope.shout["author"] = alias;
		};
	});
})();