Description: task 2


Scenario: Trello sign in as existing user
Given I am on the main application page
When I click on element located `By.Xpath(//a[@href="/login"])`
!-- When I login as a registered user - composite step not working
When I enter `${email}` in field located `By.Xpath(//input[@id="user"])`
When I wait until element located `By.Xpath(//input[@id="login"])` appears
When I click on element located `By.Xpath(//input[@id="login"])`
When I enter `${password}` in field located `By.Xpath(//input[@id="password"])`
When I click on element located `By.Xpath(//button[@id="login-submit"])`
When I wait until the page has the title 'Boards | Trello'


Scenario: Trello board creation via API
!-- When I create Trello board via API - composite step not working
Given request body: {}
When I initialize the STORY variable `boardName` with value `#{generate(regexify '[abcdefghijklmno]{10}')}`
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=e255a1dfb76f0c859663a1f05209e830&token=75c14ce11baa4998fe76f5a6b188fd9a44b3399f337e746820564719c1ae3f4c&name=${boardName}&prefs_permissionLevel=public&idOrganization=6018379ee02ff26e5a384cf0'
Then the response code is equal to '200'
Then the response body contains '${boardName}'

Scenario: Trello board creation verification
When I click on element located `By.Xpath(//li/ul/li[2])`
When I wait until the page has the title 'Testteam | Trello'
When I find >= '1' elements by By.Xpath(//div[2]/ul/li[1]) and for each element do
|step|
|When I click on element located `By.Xpath(//div[2]/ul/li[1])`|
|Then the page with the URL containing '/${boardName}' is loaded|

Scenario: List addition verification
When I find >= '1' elements by By.Xpath(//div[@id="board"]) and for each element do
|step|
|When I change context to element located `By.Xpath(//div[@id="board"])`|
|When I click on element located `By.Xpath(//span[@class="placeholder"])`|
|Then field located `By.Xpath(//input[@class="list-name-input"])` exists|
|When I enter `Test list` in field located `By.Xpath(//input[@class="list-name-input"])`|
|When I click on element located `By.Xpath(//input[@type="submit"])`|
|Then number of elements found by `By.Xpath(//div[@class="list-header-target js-editing-target"])` is greater_than `3`|


