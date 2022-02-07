
Scenario: Collect visual checks from base version
Meta:
    @skip
Given I am on a page with the URL '${baselineURL}'
Then the page with the URL '${baselineURL}' is loaded
When I ESTABLISH baseline with `mainPageScreen`
When I initialize the STORY variable `iteration` with value `1`

Then all resources by selector `[href]` are valid on:
|pages         |
|${baselineURL}|

Scenario: Relateve pages baselines establish

Given I am on the main application page
When I go to the relative URL '<page-url>'
When I ESTABLISH baseline with `relativePageScreen${iteration}`
When I initialize the STORY variable `iteration` with value `#{eval($iteration+1)}`
Examples:
{transformer=FROM_HEADLESS_CRAWLING, column=page-url}


Scenario: Verify new version pages
Meta:
    @skip
When I open URL `${compareURL}` in new window
Then the page with the URL '${compareURL}' is loaded
Then element located `xpath(//*[contains(@aria-label, "Global Context Menu")])` exists for `PT3S` duration

When I COMPARE_AGAINST baseline with `mainPageScreen`
