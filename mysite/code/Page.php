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

	private static $allowed_actions = array ();

	public function init() {
		parent::init();

		$themePath = 'themes/' . Config::inst()->get('SSViewer', 'theme');

		// Bootstrap
		Requirements::css('themes/thirdparty/bootstrap/dist/css/bootstrap.css');
		Requirements::javascript('themes/thirdparty/bootstrap/dist/js/bootstrap.min.js');

		Requirements::javascript('themes/thirdparty/jquery/dist/jquery.min.js');
		
		Requirements::javascript($themePath . '/js/script.js');
		Requirements::css($themePath . '/css/screen.css');
		
	}
}
