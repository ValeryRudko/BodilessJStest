Lifecycle:

Scenario: Collect visual checks from base version
Given I am on a page with the URL '${baselineURL}'
Then the page with the URL '${baselineURL}' is loaded
When I ESTABLISH baseline with `mainPageScreen`
When I initialize the STORY variable `iteration` with value `1`


Scenario: Relateve pages baselines establish
Meta:
    @skip
When I go to the relative URL '<relativeURL>'
When I ESTABLISH baseline with `relativePageScreen${iteration}`
When I initialize the STORY variable `iteration` with value `#{eval($iteration+1)}`
Examples:
{transformer=FROM_HEADLESS_CRAWLING, column=page-url}


Scenario: Verify new version pages
When I open URL `${compareURL}` in new window
Then the page with the URL '${compareURL}' is loaded
When I COMPARE_AGAINST baseline with `mainPageScreen`
