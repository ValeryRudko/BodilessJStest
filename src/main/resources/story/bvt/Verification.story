Scenario: Verify links
Given I am on the main application page
When I go to the relative URL '<rel_url>'
Examples:
{transformer=FROM_HEADLESS_CRAWLING, column=rel_url}
