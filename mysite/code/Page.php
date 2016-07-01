<?php

class Page extends SiteTree {

	private static $db = array();

	private static $has_one = array();

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
	}
}

class Page_Controller extends ContentController {

	private static $allowed_actions = array();

	public function init() {
		parent::init();
		$themePath = 'themes/' . Config::inst()->get('SSViewer', 'theme');

		// Jquery
		Requirements::javascript($themePath . '/thirdparty/jquery/dist/jquery.min.js');
		
		// Bootstrap
		Requirements::css($themePath . '/thirdparty/bootstrap/dist/css/bootstrap.min.css');
		Requirements::javascript($themePath . '/thirdparty/bootstrap/dist/js/bootstrap.min.js');
		
		// Theme
		Requirements::javascript($themePath . '/js/script.js');
		Requirements::css($themePath . '/css/screen.css');
	}
}
