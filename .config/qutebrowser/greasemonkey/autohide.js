// ==UserScript==
// @name        hide elements that i don't like
// @namespace   local
// @include     *
// @grant       none
// ==/UserScript==

const hideRules = {
    "https://example.com": [ "#example-element" ],
    "https://notarealwebsite.xyz": [ "#hello", "#goodbye" ]
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
