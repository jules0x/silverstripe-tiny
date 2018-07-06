<?php

class CMSAdminExtension extends Extension
{
	public function onAfterInit()
	{
		CMSMenu::remove_menu_item('Help');
		CMSMenu::remove_menu_item('ReportAdmin');
	}
}
