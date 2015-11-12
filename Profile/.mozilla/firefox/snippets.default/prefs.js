# Mozilla User Preferences

user_pref("browser.aboutHomeSnippets.updateUrl", "$SNIPPET_HOST/%STARTPAGE_VERSION%/%NAME%/%VERSION%/%APPBUILDID%/%BUILD_TARGET%/%LOCALE%/%CHANNEL%/%OS_VERSION%/%DISTRIBUTION%/%DISTRIBUTION_VERSION%/");
user_pref("browser.uitour.requireSecure", false);
// Firefox >= 36
user_pref("browser.uitour.testingOrigins", "$SNIPPET_HOST, https://snippets-dev.allizom.org, https://snippets.allizom.org, https://snippets.mozilla.org");
// Firefox < 36
user_pref("browser.uitour.whitelist.add.testing", "$SNIPPET_HOST_NO_PROTOCOL");
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("browser.tabs.warnOnClose", false);
