<?php

class SiteConfigExtension extends DataExtension {

	private static $db = array(
		'GoogleAnalyticsCode' => 'Text',
		'DefaultSocialDescription' => 'Varchar(200)',
		'MobileMenuStyle' => 'Enum("Drop, Slide", "Drop")'
	);

	private static $has_one = array(
		'DefaultSocialImage' => 'Image'
	);

	public function updateCMSFields(FieldList $fields) {

		$fields->addFieldsToTab('Root.Analytics', array(
			TextField::create('GoogleAnalyticsCode','Google analytics code')
		));

		$fields->addFieldsToTab('Root.Menu', array(
			DropdownField::create('MobileMenuStyle','Mobile menu style', singleton('SiteConfig')->dbObject('MobileMenuStyle')->enumValues())
		));

		$fields->addFieldsToTab('Root.Social', array(
			TextareaField::create('DefaultSocialDescription'),
			UploadField::create('DefaultSocialImage')
		));
	}
}
