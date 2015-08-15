<?php

	$app->get("/", function() use ($app, $db) {

		// prepare array output
		$output = array(
			"data" => "Welcome! You've reached the API endpoint."
		);

		// format and send output
		format_output($app, $output);
	});
