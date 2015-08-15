<?php

	// fetch all shouts
	$app->get("/new_shouts/:id", function($id) use ($app, $db) {
		// query database
		$result = $db->shouts()->select("id, content, author, create_timestamp")
			->where("`id` > '$id'");

		// prepare array output
		$output = array();
		foreach ($result as $shout) {
			$output[] = array(
				"id" => $shout["id"],
				"content" => $shout["content"],
				"author" => $shout["author"]
			);
		}

		// format and send output
		format_output($app, $output);
	});
