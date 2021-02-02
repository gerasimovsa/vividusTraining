Description: task 2;

Scenario: Trello Sign up nocaptcha
Given I am on the main application page
When I enter `<email>` in field located `By.Xpath(//input[@type="email"])`
When I click on element located `By.Xpath(//button[@type="submit"])`
When I enter `<name>` in field located `By.Xpath(//input[@id="displayName"])`
When I enter `<password>` in field located `By.Xpath(//input[@id="password"])`
When I click on element located `By.Xpath(//button[@id="signup-submit"])`

Examples:
|email|name|password|
|#{generate(Internet.safeEmailAddress)}|Elon Musk|#{generate(regexify '[a-z]{3}[A-Z]{2}[a-z]{3}')}|
|#{generate(Internet.safeEmailAddress)}|John McAfee|#{generate(regexify '[a-z]{3}[A-Z]{2}[a-z]{3}')}|
|#{generate(Internet.safeEmailAddress)}|Larry Elisson|#{generate(regexify '[a-z]{3}[A-Z]{2}[a-z]{3}')}|
|#{generate(Internet.safeEmailAddress)}|Satya Nadella|#{generate(regexify '[a-z]{3}[A-Z]{2}[a-z]{3}')}|
|#{generate(Internet.safeEmailAddress)}|Sundar Pichai|#{generate(regexify '[a-z]{3}[A-Z]{2}[a-z]{3}')}|

Scenario: Trello API board creation
Given request body: {}
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=e255a1dfb76f0c859663a1f05209e830&token=75c14ce11baa4998fe76f5a6b188fd9a44b3399f337e746820564719c1ae3f4c&name=<boardName>&prefs_permissionLevel=public&idOrganization=6018379ee02ff26e5a384cf0'
Then the response code is equal to '200'
Then the response body contains '<boardName>'

Examples:
|boardName|
|#{generate(regexify '[a-z]{3}[A-Z]{2}[a-z]{6}')}|
|#{generate(regexify '[a-z]{3}[A-Z]{2}[a-z]{6}')}|
|#{generate(regexify '[a-z]{3}[A-Z]{2}[a-z]{6}')}|