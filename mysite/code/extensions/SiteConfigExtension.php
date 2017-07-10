<?php

class SiteConfigExtension extends DataExtension {

	private static $db = array(
		'GoogleAnalyticsCode' => 'Text',
		'DefaultSocialDescription' => 'Varchar(200)',
		'MobileMenuStyle' => 'Enum("drop, slide", "drop")',
		'DropMenuBehaviour' => 'Enum("pushing, floating", "pushing")'
	);

	private static $has_one = array(
		'DefaultSocialImage' => 'Image'
	);

	public function updateCMSFields(FieldList $fields) {

		// Analytics
		$fields->addFieldsToTab('Root.Analytics', array(
			TextField::create('GoogleAnalyticsCode','Google analytics code')
		));

		// Mobile menu behaviour selection
		$fields->addFieldsToTab('Root.Menu', array(
			DropdownField::create('MobileMenuStyle','Mobile menu style', singleton('SiteConfig')->dbObject('MobileMenuStyle')->enumValues()),
			$dropMenuBehaviour = DropdownField::create('DropMenuBehaviour','Drop menu behaviour', singleton('SiteConfig')->dbObject('DropMenuBehaviour')->enumValues())
		));

		// Drop menu can float above content, or push content down
		$dropMenuBehaviour->displayIf('MobileMenuStyle')->isEqualTo('drop');

		// Social meta fallback values
		$fields->addFieldsToTab('Root.Social', array(
			TextareaField::create('DefaultSocialDescription'),
			UploadField::create('DefaultSocialImage')
		));
	}
}
