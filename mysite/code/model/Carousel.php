<?php

class Carousel extends DataObject implements PermissionProvider {

	private static $db = array(
		'Title' => 'Varchar(50)'
	);

	private static $has_one = array(
		'Cover' => 'ImageTwo'
	);

	private static $has_many = array(
		'Items' => 'CarouselItem'
	);

	private static $summary_fields = array(
		'Title'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName(
			array (
				'Items'
			)
		);

		$config = GridFieldConfig_RecordEditor::create();

		$fields->addFieldsToTab('Root.Main', array(
			SelectUploadField::create('Cover'),
			GridField::create('Items', 'Carousel Items', $this->Items(), $config)
		));

		$this->showCarouselUsage($fields);

		return $fields;
	}

	private function showCarouselUsage($fields) {
		$pagesUsingThisCarousel = Page::get()->filter('CarouselID', $this->ID);

		if (count($pagesUsingThisCarousel) > 0) {
			$fields->addFieldToTab('Root.Main', LiteralField::create('UsageTitle', '<h4>Carousel usage</h4>'));
		}

		foreach ($pagesUsingThisCarousel as $page) {
			$fields->addFieldToTab('Root.Main', LiteralField::create('Usage' . $page->ID, '<a style="display:block;padding-bottom:8px;" href="admin/pages/edit/show/' . $page->ID . '">' . $page->Title . '</a>'));
		}
	}

	public function providePermissions() {
		return array (
			'Carousel' => array(
				'name' => 'Create/edit carousel items',
				'category' => 'Carousel'
			)
		);
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
