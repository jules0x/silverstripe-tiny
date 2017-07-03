DO.Subscribe('app:ready', function(e, $) {
	'use strict';

	var menu = $('[data-menu]'),
		menuToggle = $('[data-menu-toggle]');

	function init() {
		attachEvents();
	}

	function attachEvents() {
		menuToggle.on('click', function(e) {
			toggleMenu();
		});
	}

	function toggleMenu() {
        menu.toggleClass('menu--open');
	}

	init();
});
