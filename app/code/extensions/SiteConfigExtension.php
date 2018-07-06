<?php

class SiteConfigExtension extends DataExtension
{

	private static $db = array(
		'GoogleAnalyticsCode' => 'Text'
	);

	private static $has_one = array(
		'DefaultSocialImage' => 'Image'
	);

	public function updateCMSFields(FieldList $fields)
	{

		// Analytics
		$fields->addFieldsToTab('Root.Analytics', array(
			TextField::create('GoogleAnalyticsCode', 'Google analytics code')
		));

		// Social meta fallback value
		$fields->addFieldsToTab('Root.Social', array(
			UploadField::create('DefaultSocialImage')
		));
	}
}
