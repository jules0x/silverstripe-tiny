"use strict";

/**
 * Core bootstrap for application code to load onto.
 *
 * As the application is broken down into many smaller application
 * files, we use an event based system to notify of changes between
 * commands.
 */
var DO = DO || {};

DO.Debug = false;
DO.OneTimeEvents = [];

/**
 * Subscribe a function callback to run when an event runs. Uses jQuery
 * on() internally so follows the same argument method as that
 *
 * See (http://api.jquery.com/on/)
 *
 * @param {mixed} string || object
 * @param {mixed} string || func
 * @param {function} func
 * @param {object} obj
 */
DO.Subscribe = function (events, selector, fn, data) {
	if (typeof selector === 'function') {
		if (typeof events === 'object') {
			$.each(events, function (i, event) {
				jQuery(document).on(event, selector);
				if (jQuery.inArray(events, DO.OneTimeEvents) !== -1) {
					DO.Fire(events, []);
				}
			});
		}
		else {
			jQuery(document).on(events, selector);
			if (jQuery.inArray(events, DO.OneTimeEvents) !== -1) {
				DO.Fire(events, []);
			}
		}
	}
	else {
		if (typeof events === 'array') {
			$.each(events, function (i, event) {
				jQuery(document).on(event, selector, data, fn);
				if (jQuery.inArray(events, DO.OneTimeEvents) !== -1) {
					DO.Fire(events, []);
				}
			});
		}
		else {
			jQuery(document).on(events, selector, data, fn);
			if (jQuery.inArray(events, DO.OneTimeEvents) !== -1) {
				DO.Fire(events, []);
			}
		}
	}
};

/**
 * Un subscribe a function callback.
 *
 * See (http://api.jquery.com/off/)
 *
 * @param {mixed} string || array
 * @param {string}
 */
DO.Unsubscribe = function (events, selector) {
	if (typeof events == 'string') {
		events = [events];
	}

	jQuery(document).off(events, selector);
};

/**
 * Trigger a new application event.
 *
 * Global events should be namespaced to app. These include functions
 * like app:ready. Specific page actions should be namespaced to their
 * areas. This includes app:table:update and friends. jQuery will always
 * be passed to the subscribed function.
 *
 * @param {string}
 * @param {array}
 */
DO.Fire = function (e, args, oneTimeEvent) {
	DO.Log('firing ' + e);

	if (typeof args !== "object") {
		args = [];
	}

	args.unshift(jQuery);
	jQuery(document).trigger(e, args);

	if (oneTimeEvent) {
		DO.OneTimeEvents.push(e);
	}

};

/**
 * Log a given message to the console if it exists and the application is in
 * debug mode
 *
 * @param {string}
 * @param {string}
 */
DO.Log = function (msg, level) {
	if (DO.Debug !== false) {
		if (typeof level == "undefined") {
			level = 'log';
		}
		if (console) {
			switch (level) {
				case 'log':
					console.log(msg);
					break;
				case 'info':
					console.info(msg);
					break;
				case 'debug':
					console.debug(msg);
					break;
				case 'error':
					console.error(msg);
					break;
			}
		}
	}
};

/**
 * Retrieve the current breakpoint name.
 *
 * @returns {string}
 */
DO.CurrentBreakpoint = function () {
	return $.fn.whim('currentBreakpoint');
}
