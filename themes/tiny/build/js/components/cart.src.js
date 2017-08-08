DO.Subscribe('app:ready', function(e, $) {
    'use strict';

    var menu = $('[data-sidecart]'),
        menuToggle = $('[data-sidecart-toggle]');

    function init() {
        attachEvents();
    }

    function attachEvents() {
        menuToggle.on('click', function(e) {
            toggleMenu();
        });
    }

    function toggleMenu() {
        menu.toggleClass('cart--side--open');
        menuToggle.toggleClass('hamburger-active');
    }

    init();
});
