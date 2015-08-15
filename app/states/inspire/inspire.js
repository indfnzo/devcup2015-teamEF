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
	}).controller("InspireCtrl", function($scope, Restangular, $timeout) {
		// define a local store for currently existing posts in database
		$scope.lastPost = 0;
		$scope.posts = [];

		// function for fetching new content and appending them to store
		function beginResyncCycle() {
			Restangular.all("new_posts/" + $scope.lastPost).getList().then(function(new_posts) {
				// append all new posts to store
				$scope.posts.push.apply($scope.posts, new_posts);

				// update last post to be the highest id in the set
				if (new_posts.length > 0) {
					$scope.lastPost = Math.max.apply(null, new_posts.map(function(new_post) {
						// return value of key 'id' as int
						return parseInt(new_post["id"]);
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

		// define a local store for the post currently being written
		$scope.post = {};

		$scope.submit = function() {
			// set current form as loading (todo)

			// submit current scope's post to api
			Restangular.all("posts").post($scope.post);
			$scope.post = {};
		};
	});
})();