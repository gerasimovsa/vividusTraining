Description: task 2

GivenStories: task2/trelloSignUpNested.story

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


Scenario: Verify 5 pages without dynamic elements
When I refresh the page
When I go to the relative URL '<url>'
When I wait until element located `By.Xpath(//span[contains(text(),"<element>")])` appears
When I COMPARE_AGAINST baseline with `<name>` ignoring:
|ELEMENT                      |
|By.Xpath(//div[@class="_1cWvobXLvxzjyb"])|
Examples:
|element|name|url|
|Business Templates|Business|/templates/business|
|Design Templates|Design|/templates/design|
|Education Templates|Education|/templates/education|
|Engineering Templates|Engineering|/templates/engineering|
|Marketing Templates|Marketing|/templates/marketing|
