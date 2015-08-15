<?php
	// -- load application dependencies
	require_once("functions.php");

	// -- setup Slim
	require_once("Slim/Slim.php");
	\Slim\Slim::registerAutoloader();

	$app = new \Slim\Slim();

	// -- setup CORS for cross domain API access
	require_once("Slim/Middleware/CorsSlim.php");
	$corsOptions = array(
		"origin" => "*"
	);

	$app->add(new \CorsSlim\CorsSlim($corsOptions));

	// -- setup NotORM for database access
	require_once("NotORM.php");

	// -- configure PDO connection
	$dsn = "mysql:host=localhost;dbname=devcup2015-ef;";
	$pdo = new PDO($dsn, "root", "");
	$db = new NotORM($pdo);

	// -- load route files
	include_once("routes/index.php");
	include_once("routes/posts.php");
	include_once("routes/new_posts.php");

	// -- execute Slim application
	$app->run();
