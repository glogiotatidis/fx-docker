# Mozilla User Preferences

user_pref("browser.aboutHomeSnippets.updateUrl", "http://127.0.0.1:8000/%STARTPAGE_VERSION%/%NAME%/%VERSION%/%APPBUILDID%/%BUILD_TARGET%/%LOCALE%/%CHANNEL%/%OS_VERSION%/%DISTRIBUTION%/%DISTRIBUTION_VERSION%/");
user_pref("browser.uitour.requireSecure", false);
// Firefox >= 36
user_pref("browser.uitour.testingOrigins", "http://127.0.0.1:8000, https://snippets-dev.allizom.org, https://snippets.allizom.org, https://snippets.mozilla.org");
// Firefox < 36
user_pref("browser.uitour.whitelist.add.testing", "127.0.0.1:8000");
user_pref("browser.shell.checkDefaultBrowser", false);
