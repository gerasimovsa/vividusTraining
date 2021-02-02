Description: task 1;
Scenario: Imdb sign in and watchlist import
Given I am on the main application page
When I click on element located `By.Xpath(//div)`
When I click on element located `By.Xpath(//span[contains(text(),"Sign in with Facebook")])`
When I enter `${phone}` in field located `By.Xpath(//input[@id="email"])`
When I enter `${password}` in field located `By.Xpath(//input[@id="pass"])`
When I click on element located `By.Xpath(//button[@id="loginbutton"])`
When I enter `Paprika` in field located `By.Xpath(//input[@id="suggestion-search"])`
When I click on element located `By.Xpath(//button[@id="suggestion-search-button"])`
When I click on element located `By.Xpath(//div[2]/table/tbody/tr[1]//img)`
When I click on element located `By.Xpath(//div[@class="wl-ribbon standalone not-inWL"])`
When I click on element located `By.Xpath(//a[@class="ipc-button ipc-button--single-padding ipc-button--default-height ipc-button--core-baseAlt ipc-button--theme-baseAlt ipc-button--on-textPrimary ipc-text-button"])`
When I select `Popularity` in dropdown located `By.Xpath(//select[@id="lister-sort-by-options"])`
When I click on element located `By.Xpath(//a[contains(text(),"Export this list")])`


