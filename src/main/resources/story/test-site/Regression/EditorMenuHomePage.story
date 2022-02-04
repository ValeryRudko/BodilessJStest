Meta:
    @group Editor Menu

Scenario: Go to main application page
Given I am on the main application page


Scenario: Check Docs button
Then number of elements found by `xpath(//div[contains(@class,'bl-text-white')]//span[text()='Docs'])` is = `1`
When I click on element located `xpath(//div[contains(@class,'bl-text-white')]//span[text()='Docs'])`
When I wait `PT3S` until window with title that IS_EQUAL_TO `BodilessJS` appears and switch to it
Then the text 'Content Editor User Guide' exists
When I close the current window


Scenario: Check Edit mode button
Then number of elements found by `xpath(//span[not (contains(@class, 'bl-bg-primary'))][text()='edit'])` is = `1`
When I click on element located `xpath(//span[contains(@class,'material-icons')][text()='edit'])`
Then number of elements found by `xpath(//span[not (contains(@class, 'bl-bg-primary'))][text()='edit'])` is = `0`
Then number of elements found by `xpath(//span[contains(@class, 'bl-bg-primary')][text()='edit'])` is = `1`
When I click on element located `xpath(//div[contains(@class,'bl-text-white')]//span[text()='Edit'])`
Then number of elements found by `xpath(//span[not (contains(@class, 'bl-bg-primary'))][text()='edit'])` is = `1`


Scenario: Check File button and its inner content
When I click on element located `xpath(//span[contains(@class,'material-icons')][text()='cloud'])`
When I wait until element located `xpath(//div[@aria-label="Context Submenu File form"])` appears
When I change context to element located `xpath(//div[@aria-label="Context Submenu File form"])`
Then number of elements found by `xpath(.//h3[text()="File"])` is = `1`
Then number of elements found by `xpath(.//button/span[text()="cancel"])` is = `1`
Then number of elements found by `xpath(.//button/span[text()="Pull"])` is = `1`
Then number of elements found by `xpath(.//button/span[text()="Push"])` is = `1`
Then number of elements found by `xpath(.//button/span[text()="History"])` is = `1`
Then number of elements found by `xpath(.//button/span[text()="Revert"])` is = `0`
When I reset context


Scenario: Check Pull button clicking
When I click on element located `xpath(//span[contains(@class,'material-icons')][text()='cloud_download'])`
Then number of elements found by `xpath(//h3[contains(@class,'bl-text-lg bl-font-bold bl-text-gray-100')][text()='Pull Changes'])` is = `1`
Then number of elements found by `xpath(//button/span[text()="cancel"])` is = `1`
Then number of elements found by `xpath(//button/span[text()="done"])` is = `1`
When I click on element located `xpath(//button/span[text()="cancel"])`


Scenario: Check Push button clicking
When I click on element located `xpath(//span[contains(@class,'material-icons')][text()='cloud_upload'])`
Then number of elements found by `xpath(//h3[contains(@class,'bl-text-lg bl-font-bold bl-text-gray-100')][text()='Upload changes'])` is = `1`
Then number of elements found by `xpath(//label[text()="Description:"])` is = `1`
Then number of elements found by `xpath(//input[@name="commitMessage"])` is = `1`
Then number of elements found by `xpath(//button/span[text()="cancel"])` is = `1`
Then number of elements found by `xpath(//button/span[text()="done"])` is = `1`
When I click on element located `xpath(//button/span[text()="cancel"])`


Scenario: Check Pull button clicking
When I click on element located `xpath(//span[contains(@class,'material-icons')][text()='book'])`
Then number of elements found by `xpath(//h3[contains(@class,'bl-text-lg bl-font-bold bl-text-gray-100')][text()='Latest Commits'])` is = `1`
Then number of elements found by `xpath(//button/span[text()="cancel"])` is = `1`
Then number of elements found by `xpath(//input[@type="radio" and @name="commits"])` is > `3`
Then number of elements found by `xpath(//button/span[text()="done"])` is = `0`
When I click on element located `xpath(//button/span[text()="cancel"])`


Scenario: Check Revert button appearence
When I click on element located `xpath(//button/span[text()="cancel"])`
When I click on element located `xpath(//span[contains(@class,'material-icons')][text()='edit'])`
When I click on element located `xpath(//span[contains(@class,'material-icons')][text()='cloud'])`
When I wait until element located `xpath(//div[@aria-label="Context Submenu File form"])` appears
When I change context to element located `xpath(//div[@aria-label="Context Submenu File form"])`
Then number of elements found by `xpath(.//h3[text()="File"])` is = `1`
Then number of elements found by `xpath(.//button/span[text()="cancel"])` is = `1`
Then number of elements found by `xpath(.//button/span[text()="Pull"])` is = `1`
Then number of elements found by `xpath(.//button/span[text()="Push"])` is = `1`
Then number of elements found by `xpath(.//button/span[text()="History"])` is = `1`
Then number of elements found by `xpath(.//button/span[text()="Revert"])` is = `1`


Scenario: Check Revert button clicking
When I click on element located `xpath(//span[contains(@class,'material-icons')][text()='undo'])`
When I reset context
Then number of elements found by `xpath(//h3[contains(@class,'bl-text-lg bl-font-bold bl-text-gray-100')][text()='Revert to saved'])` is = `1`
Then number of elements found by `xpath(//label[text()="Discard local changes"])` is = `1`
Then number of elements found by `xpath(//button/span[text()="cancel"])` is = `1`
Then number of elements found by `xpath(//button/span[text()="done"])` is = `1`
When I click on element located `xpath(//button/span[text()="cancel"])`
