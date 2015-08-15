<?php
	// app-wide function dependencies

	// -- post data generation formatting
	function format_output(&$app, &$output) {
		// -- force all outcoming data to utf8
		utf8_encode_recursive($output);

		// -- format based on callback before sending
		if (($callback = $app->request()->get("callback")) && $callback !== null) {
			// -- callback exists, envelope response with callback (jsonp)
			$app->response()->header("Content-Type", "application/javascript");
			$app->response()->body($callback . "(" . json_encode($output) . ");");
		} else {
			// -- callback is null, return normal json output
			// -- output is prettified for better browser explorability, disable for more
			// -- compressed output and faster loading
			$app->response()->header("Content-Type", "application/json");
			$app->response()->body(json_encode($output, JSON_PRETTY_PRINT));
		}
	}

	// -- traverses through entire array and performing utf8_encode on all strings
	function utf8_encode_recursive(&$input) {
		if (is_string($input)) {
			$input = utf8_encode($input);
		} else if (is_array($input)) {
			foreach ($input as &$value) {
				utf8_encode_recursive($value);
			}
			unset($value);
		} else if (is_object($input)) {
			$vars = array_keys(get_object_vars($input));
			foreach ($vars as $var) {
				utf8_encode_recursive($input->$var);
			}
		}
	}
