<?php

class ImageTwo extends Image {

	private static $has_many = array(
		'Pages' => 'Page',
		'CarouselItems' => 'CarouselItem',
		'CarouselCovers' => 'Carousel'
	);
}