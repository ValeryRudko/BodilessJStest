Description: Simple story to check the page availability;

Scenario: Open main page of BodilessJS view
Given I am on the main application page

Scenario: Opening expected pages
When I go to the relative URL '<URLrelative>'
When I wait until element located `xpath(//nav[@aria-label="Breadcrumb"]//li/span[text()="<finalBreadcrumbItem>"])` appears
Examples:
|URLrelative         |finalBreadcrumbItem|
|/404/               |Menu Item          |
|/accordion/         |Accordion          |
|/breadcrumb/        |Breadcrumb         |
|/carousel/          |Carousel           |
|/chameleon/         |Chameleon          |
|/compound-form/     |Menu Item          |
|/content-library/   |Content Library    |
|/filter-item/       |Filter Item        |
|/filter-page/       |Filter Page        |
|/flow-container/    |Flow Container     |
|/forms/             |Menu Item          |
|/gallery-final/     |Menu Item          |
|/form-elements/     |Form Elements      |
|/iframe/            |iFrame             |
|/images/            |Images             |
|/link-toggle/       |Link Toggle        |
|/list/              |Menu Item          |
|/list2/             |List               |
|/megamenu/          |Menu Item          |
|/notification/      |Notification       |
|/products/          |Product Listing    |
|/richtext/          |Rich Text          |
|/search/            |Menu Item          |
|/sitedatapage/      |Example 1          |
|/sitedatapage2/     |Example 2          |
|/slate-shared-node/ |Menu Item          |
|/social-share/      |Social Share       |
|/touts/             |Menu Item          |
|/youtube/           |Youtube            |
|/api/fclasses/      |Menu Item          |
|/products/product-a/|Product            |
|/products/product-b/|Brand® Product     |
