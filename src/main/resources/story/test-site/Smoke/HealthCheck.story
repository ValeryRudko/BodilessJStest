Meta:

Lifecycle:
Examples:
|siteView|env           |
|editable|${editableENV}|
|static  |${staticEnv}  |


Scenario: Open main page of BodilessJS view
Given I am on a page with the URL '<env>'


Scenario: Opening expected pages
Meta:
When I go to the relative URL '<URLrelative>'
Then the page with the URL containing '<URLrelative>' is loaded
When I wait until element located `xpath(//nav[@aria-label="Breadcrumb"]//li/span[text()="<finalBreadcrumbItem>"])` appears
When I perform baseline `<siteView>/<baselineTitle>` check ignoring diff `2` percantage
Examples:
|URLrelative                       |finalBreadcrumbItem|baselineTitle                   |
|/404/                             |Menu Item          |404                             |
|/404.html/                        |Menu Item          |404_html                        |
|/accordion/                       |Accordion          |accordion                       |
|/anchor/                          |Anchor             |anchor                          |
|/breadcrumb/                      |Breadcrumb         |breadcrumb                      |
|/api/default-content/             |Menu Item          |api_default-content             |
|/api/fclasses/                    |Menu Item          |api_fclasses                    |
|/breadcrumb/                      |Breadcrumb         |breadcrumb                      |
|/cards/                           |Cards              |cards                           |
|/carousel/                        |Carousel           |carousel                        |
|/carousel/rtl/                    |Menu Item          |carousel_rtl                    |
|/chameleon/                       |Chameleon          |chameleon                       |
|/compound-form/                   |Menu Item          |compound-form                   |
|/content-library/                 |Content Library    |content-library                 |
|/content-library/my_example/      |Menu Item          |content-library_my_example      |
|/context/                         |Context            |context                         |
|/cs-perf/                         |Menu Item          |cs-perf                         |
|/fc-basics/                       |Menu Item          |fc-basics                       |
|/files/                           |Link To Files      |files                           |
|/filter-item/                     |Filter Item        |filter-item                     |
|/filter-page/                     |Filter Page        |filter-page                     |
|/flow-container/                  |Flow Container     |flow-container                  |
|/flow-container/html-deserializer/|Menu Item          |flow-container_html-deserializer|
|/flow-container-rtl/              |Menu Item          |flow-container-rtl              |
|/form-elements/                   |Form Elements      |form-elements                   |
|/forms/                           |Menu Item          |forms                           |
|/gallery-final/                   |Menu Item          |gallery-final                   |
|/form-elements/                   |Form Elements      |form-elements                   |
|/iframe/                          |iFrame             |iframe                          |
|/images/                          |Images             |images                          |
|/link-toggle/                     |Link Toggle        |link-toggle                     |
|/list2/                           |List               |list2                           |
|/menu/                            |Menu Item          |menu                            |
|/notification/                    |Notification       |notification                    |
|/oidc/                            |Menu Item          |oidc                            |
|/oidc-redirect/                   |Menu Item          |oidc-redirect                   |
|/products/                        |Product Listing    |products                        |
|/products/product-a/              |Product            |products_product-a              |
|/products/product-b/              |Brand® Product     |products_product-b              |
|/richtext/                        |Rich Text          |richtext                        |
|/search/                          |Menu Item          |search                          |
|/sitedatapage/                    |Example 1          |sitedatapage                    |
|/sitedatapage2/                   |Example 2          |sitedatapage2                   |
|/slate-shared-node/               |Menu Item          |slate-shared-node               |
|/social-share/                    |Social Share       |social-share                    |
|/social-wall/                     |Social Wall        |social-wall                     |
|/styleguide/                      |Menu Item          |styleguide                      |
|/table/                           |Table              |table                           |
|/token-editor/                    |Menu Item          |token-editor                    |
|/tokens/                          |Menu Item          |tokens                          |
|/youtube/                         |Youtube            |youtube                         |
|/___templates/product_detail/     |Menu Item          |___templates_product_detail     |
|/___templates/product_listing/    |Menu Item          |___templates_product_listing    |
|/___templates/special/            |Menu Item          |___templates_special            |
