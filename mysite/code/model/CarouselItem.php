<?php

class CarouselItem extends DataObject {

	private static $db = array(
		'Description' => 'Text',
		'Type' => 'Enum("Image", "Image")'
	);

	private static $has_one = array(
		'Image' => 'ImageTwo',
		'Carousel' => 'Carousel'
	);

	private static $summary_fields = array(
		'Description',
		'Type'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName(array(
			'CarouselID'
		));

		$fields->addFieldsToTab('Root.Main',
			SelectUploadField::create('Image')
		);

		return $fields;
	}

	public function canView($member = null) {
		return true;
	}

	public function canEdit($member = null) {
		return Permission::check('Carousel');
	}

	public function canDelete($member = null) {
		return Permission::check('Carousel');
	}

	public function canCreate($member = null) {
		return Permission::check('Carousel');
	}
}
