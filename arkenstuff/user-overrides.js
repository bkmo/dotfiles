user_pref("_user.js.parrot", "syntax error @ USER OVERRIDES");

user_pref("privacy.resistFingerprinting", false); // 4501
user_pref("privacy.resistFingerprinting.letterboxing", false); // 4504 [pointless if not using RFP]
user_pref("webgl.disabled", false); // 4520 [mostly pointless if not using RFP]
user_pref("privacy.clearOnShutdown.history", false); // 2811
user_pref("network.http.referer.XOriginPolicy", 2; //fix bank sites cross referer 1601
user_pref("keyword.enabled", true);
user_pref("browser.startup.page", 1);
user_pref("browser.startup.homepage", "https://news.google.com/topstories?hl=en-US&gl=US&ceid=US:en|https://www.apriliaforum.com/forums/forumdisplay.php?11-Aprilia-1000cc-V-Twins-Model-Years-1998-2009");
user_pref("extensions.pocket.enabled", false);
user_pref("browser.tabs.loadBookmarksInTabs", true);
user_pref("keyword.enabled", true);
user_pref("privacy.clearOnShutdown.history", false);   // [DEFAULT: true]
user_pref("extensions.getAddons.showPane", true);
user_pref("pref.privacy.disable_button.cookie_exceptions", false);
user_pref("identity.fxaccounts.enabled", false);
user_pref("signon.rememberSignons", false);
user_pref("browser.zoom.siteSpecific", true);
user_pref("extensions.formautofill.addresses.enabled", false); // [FF55+]
user_pref("extensions.formautofill.creditCards.enabled", false); // [FF56+]
user_pref("extensions.formautofill.heuristics.enabled", false); // [FF55+]

user_pref("_user.js.parrot", "SUCCESS! USER-OVERRIDES LOADED ***The Parrot Has Landed***");
