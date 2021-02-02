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