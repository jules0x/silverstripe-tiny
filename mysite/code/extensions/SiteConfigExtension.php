<?php

class SiteConfigExtension extends DataExtension {

	private static $db = array(
		'GoogleAnalyticsCode' => 'Text',
		'DefaultSocialDescription' => 'Varchar(200)'
	);

	private static $has_one = array(
		'DefaultSocialImage' => 'Image'
	);

	public function updateCMSFields(FieldList $fields) {

		$fields->addFieldsToTab('Root.Analytics', array(
			TextField::create('GoogleAnalyticsCode','Google analytics code')
		));

		$fields->addFieldsToTab('Root.Social', array(
			TextareaField::create('DefaultSocialDescription'),
			UploadField::create('DefaultSocialImage')
		));
	}
}
