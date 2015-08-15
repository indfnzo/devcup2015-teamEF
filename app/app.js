(function() {

	// define global application controller
	var app = angular.module("app", [
		// application dependencies
		"ui.router",
		"ui.router.title",
		"restangular",
		"app.directives",
		"app.states.home",
		"app.states.consult",
		"app.states.shout",
		"app.states.inspire"
	]);

	// configure/init application
	app.config(function($urlRouterProvider, RestangularProvider) {

		// set fallback state for ui router
		// redirects back to homepage
		$urlRouterProvider.otherwise("/");

		// configure Restangular
		RestangularProvider.setBaseUrl("api/v1");
		RestangularProvider.setJsonp(true);
		RestangularProvider.setDefaultRequestParams("jsonp", {callback: "JSON_CALLBACK"});
	});

	// application controller
	app.controller("AppCtrl", function() {
	});
})();