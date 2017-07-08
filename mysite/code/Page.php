<?php

class Page extends SiteTree {

	private static $db = array(
		'Intro' => 'Text',
		'SocialDescription' => 'Varchar(200)',
		'ShowCarousel' => 'Boolean'
	);

	private static $has_one = array(
		'SocialImage' => 'ImageTwo',
		'Carousel' => 'Carousel'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldsToTab('Root.Main', array(
			TextareaField::create('Intro')
		), 'Content');

		$fields->addFieldsToTab('Root.Carousel', array(
			CheckboxField::create('ShowCarousel'),
			$carouselDropdown = DropdownField::create('CarouselID', 'Carousel', Dataobject::get("Carousel")->map("ID", "Title", "Please Select"))
		));

		$fields->addFieldsToTab('Root.Social', array(
			TextareaField::create('SocialDescription'),
			UploadField::create('SocialImage')
		));

		// Configure fields
		$carouselDropdown->setHasEmptyDefault(true);

		return $fields;
	}

	public function getCurrentYear() {
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
