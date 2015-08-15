<?php

	// fetch all posts
	$app->get("/posts", function() use ($app, $db) {
		// query database
		$result = $db->posts()->select("id, title, content, author_name, author_gender, create_timestamp");

		// prepare array output
		$output = array();
		foreach ($result as $post) {
			$output[] = array(
				"id" => $post["id"],
				"title" => $post["title"],
				"content" => $post["content"],
				"author_name" => $post["author_name"],
				"author_gender" => $post["author_gender"],
				"create_timestamp" => $post["create_timestamp"]
			);
		}

		// format and send output
		format_output($app, $output);
	});

	// create a new post
	$app->post("/posts", function() use ($app, $db) {
		// get response from POST
		$app->response()->header("Content-Type", "application/json");
		$post = $app->request()->getBody();

		// verify input (todo)

		// insert new post to database
		$result = $db->posts()->insert(json_decode($post,true));

		// prepare array output
		$output[] = array(
			"id" => $result["id"],
			"title" => $result["title"],
			"content" => $result["content"],
			"author_name" => $result["author_name"],
			"author_gender" => $result["author_gender"],
			"create_timestamp" => $result["create_timestamp"]
		);

		// format and send output
		format_output($app, $output);
	});
