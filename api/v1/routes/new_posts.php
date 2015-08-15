<?php

	// fetch all posts
	$app->get("/new_posts/:id", function($id) use ($app, $db) {
		// query database
		$result = $db->posts()->select("id, title, content, author_name, author_gender, create_timestamp")
			->where("`id` > '$id'");

		// prepare array output
		$output = array();
		foreach ($result as $post) {
			$output[] = array(
				"id" => $post["id"],
				"title" => $post["title"],
				"content" => $post["content"],
				"author_name" => $post["author_name"],
				"author_gender" => $post["author_gender"]
			);
		}

		// format and send output
		format_output($app, $output);
	});
