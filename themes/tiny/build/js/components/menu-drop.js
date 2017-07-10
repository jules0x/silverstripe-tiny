DO.Subscribe('app:ready', function(e, $) {
    'use strict';

    var menu = $('[data-menu]'),                // nav
        menuToggle = $('[data-menu-toggle]'),   // button
        menuList = $('[data-menu-list]');       // ul

    function init() {
        attachEvents();
    }

    function attachEvents() {
        menuToggle.on('click', function(e) {
            toggleMobileMenu();
        });
    }

    function toggleMobileMenu() {
        if (menu.hasClass('menu--drop')) {
            if (menu.hasClass('menu--open')) {
                menu.removeAttr('style');
            } else {
                menu.height(menuList.outerHeight());
            }
        }
    }

    init();
});
