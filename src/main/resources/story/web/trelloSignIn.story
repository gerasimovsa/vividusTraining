Scenario: Trello sign in as existing user
Given I am on the main application page
When I click on element located `By.Xpath(//a[@href="/login"])`
When I enter `${email}` in field located `By.Xpath(//input[@id="user"])`
When I wait until element located `By.Xpath(//input[@id="login"])` appears
When I click on element located `By.Xpath(//input[@id="login"])`
When I wait until element located `By.Xpath(//input[@id="password"])` appears
When I enter `${password}` in field located `By.Xpath(//input[@id="password"])`
When I click on element located `By.Xpath(//button[@id="login-submit"])`
When I wait until the page has the title 'Boards | Trello'

