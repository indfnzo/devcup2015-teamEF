(function() {

	// define global application controller
	var app = angular.module("app", [
		// application dependencies
		"ui.router",
		"ui.router.title",
		"restangular",
		"ngSanitize",
		"app.directives.homeNav",
		"app.directives.globalNav",
		"app.states.home",
		"app.states.consult",
		"app.states.shout",
		"app.states.inspire",
		"app.states.compose"
	]);

	// configure/init application
	app.config(function($urlRouterProvider, RestangularProvider) {

		// set fallback state for ui router
		// redirects back to homepage
		$urlRouterProvider.otherwise("/");

		// configure Restangular
		RestangularProvider.setBaseUrl("api/v1/index.php");
		RestangularProvider.setJsonp(true);
		RestangularProvider.setDefaultRequestParams("jsonp", {callback: "JSON_CALLBACK"});
	});

	// application controller
	app.controller("AppCtrl", function() {
	});

	// custom filters

	// converts all newlines to html line breaks
	app.filter("format", function() {
		return function(content) {
			if (!content) return content;
			return content.replace(/\n\r?/g, "<br>");
		}
	});
})();