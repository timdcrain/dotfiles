// Mozilla User Preferences

// Disable location-aware browsing.
// https://www.mozilla.org/en-US/firefox/geolocation/
user_pref("geo.enabled", false);

// Disable analytics beacon.
// https://developer.mozilla.org/en-US/docs/Web/API/navigator.sendBeacon
user_pref("beacon.enabled", false);

// Disable auto filling forms.
user_pref("browser.formfill.enable", false);

// Disable swip left/right to navigate.
user_pref("browser.gesture.swipe.left", "");
user_pref("browser.gesture.swipe.right", "");

// Set default search engine region.
user_pref("browser.search.region", "US");

// Disable sending pings.
user_pref("browser.send_pings", false);

// Don't trim HTTP off the URL in the address bar.
user_pref("browser.urlbar.trimURLs", false);

// Disable Ctrl-q shortcut to close Firefox.
user_pref("browser.quitShortcut.disabled", true);

// Disable new tab personalization.
user_pref("browser.newtabpage.activity-stream.discoverystream.personalization.enabled", false);

// Enable strict enhanced tracking protection.
user_pref("browser.contentblocking.category", "strict");

// Disable DNS prefetch.
user_pref("network.dns.disablePrefetch", true);
user_pref("network.dns.disablePrefetchFromHTTPS", true);

// Make sure that third-party cookies never persist beyond the session.
user_pref("network.cookie.thirdparty.sessionOnly", true);
user_pref("network.cookie.thirdparty.nonsecureSessionOnly", true);

// Disable link prefetch.
user_pref("network.prefetch-next", false);

// Enable Firefox Tracking Protection.
// https://support.mozilla.org/en-US/kb/enhanced-tracking-protection-firefox-desktop
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.cryptomining.enabled", true);
user_pref("privacy.trackingprotection.fingerprinting.enabled", true);
user_pref("privacy.trackingprotection.socialtracking.enabled", true);

// Enable contextual identity containers.
user_pref("privacy.userContext.enabled", true);

// Disable remembering usernames/passwords.
user_pref("signon.rememberSignons", false);
