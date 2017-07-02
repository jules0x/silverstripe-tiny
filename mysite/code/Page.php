<?php

class Page extends SiteTree {

	private static $db = array(
		'Intro' => 'Text',
		'SocialDescription' => 'Varchar(200)'
	);

	private static $has_one = array(
		'SocialImage' => 'Image'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldsToTab('Root.Main', array(
			TextareaField::create('Intro')
		), 'Content');

		$fields->addFieldsToTab('Root.Social', array(
			TextareaField::create('SocialDescription'),
			UploadField::create('SocialImage')
		));

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

		Requirements::javascript($themePath . '/js/script.min.js');
		Requirements::css($themePath . '/css/style.css');
	}
}
