<?php

	// fetch all shouts
	$app->get("/shouts", function() use ($app, $db) {
		// query database
		$result = $db->shouts()->select("id, content, author, create_timestamp");

		// prepare array output
		$output = array();
		foreach ($result as $shout) {
			$output[] = array(
				"id" => $shout["id"],
				"content" => $shout["content"],
				"author" => $shout["author"],
				"create_timestamp" => $shout["create_timestamp"]
			);
		}

		// format and send output
		format_output($app, $output);
	});

	// publish a new shout
	$app->post("/shouts", function() use ($app, $db) {
		// get response from POST
		$app->response()->header("Content-Type", "application/json");
		$shout = $app->request()->getBody();

		// verify input (todo)

		// insert new shout to database
		$result = $db->shouts()->insert(json_decode($shout,true));

		// prepare array output
		$output[] = array(
			"id" => $result["id"],
			"content" => $result["content"],
			"author" => $result["author"]
		);

		// format and send output
		format_output($app, $output);
	});
