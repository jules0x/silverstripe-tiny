<?php

class CarouselAdmin extends ModelAdmin {

	private static $managed_models = array(
		'Carousel'
	);

	private static $url_segment = 'carousels';

	private static $menu_title = 'Carousels';

	private static $menu_icon = 'mysite/images/icons/carousels.png';

}
