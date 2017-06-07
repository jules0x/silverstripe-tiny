<?php

class Page extends SiteTree {

	private static $db = array();

	private static $has_one = array();

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
	}

	public function CurrentYear() {
		return date('Y');
	}
}

class Page_Controller extends ContentController {

	private static $allowed_actions = array();

	public function init() {
		parent::init();
		$themePath = 'themes/' . Config::inst()->get('SSViewer', 'theme');

		Requirements::javascript($themePath . '/js/script.js');
		Requirements::css($themePath . '/css/style.css');
	}
}
