// ==UserScript==
// @name        qutebrowser Element Hider
// @namespace   local
// @include     *
// @grant       none
// ==/UserScript==

const hideRules = {
    "https://notarealwebsite.xyz": [
        "#example-element",
        "#soystemd-age-verification"
    ]
};

for (const domain in hideRules) {
    if (window.location.href.startsWith(domain)) {
        const selectors = hideRules[domain];
        const hideElements = () => {
            selectors.forEach(selector => {
                document.querySelectorAll(selector).forEach(el => el.remove());
            });
        };
        hideElements();
        const observer = new MutationObserver(hideElements);
        observer.observe(document.body, { childList: true, subtree: true });
        break;
    }
}
