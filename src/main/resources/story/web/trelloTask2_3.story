Description: task 2


Scenario: Trello sign in as existing user
Given I am on the main application page
When I click on element located `By.Xpath(//a[@href="/login"])`
When I login as a registered user


Scenario: Verifying created board existance
When I create Trello board via API
