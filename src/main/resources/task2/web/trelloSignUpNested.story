Scenario: Trello new user sign up no captcha

Given I am on the main application page
When I find <= '1' elements by By.Xpath(//*[@class="btn btn-sm bg-white font-weight-bold"]) and for each element do
|step|
|When I click on element located `By.Xpath(//a[@class="btn btn-sm bg-white font-weight-bold"])`|
|When I initialize the STORY variable `UserName` with value `#{generate(Name.firstName)}`|
|When I initialize the STORY variable `UserPass` with value `#{generate(regexify '[ABCDEFGHIJKLMNO]{10}')}`|
|When I initialize the STORY variable `UserEmail` with value `#{generate(Internet.safeEmailAddress)}`|
|When I enter `${UserEmail}` in field located `By.Xpath(//input[@type="email"])`|
|When I click on element located `By.Xpath(//input[@id="signup-submit"])`|
|When I wait until element located `By.Xpath(//form[@id="form-sign-up"])` appears|
|When I enter `${UserName}` in field located `By.Xpath(//input[@id="displayName"])`|
|When I enter `${UserPass}` in field located `By.Xpath(//input[@id="password"])`|
|When I click on element located `By.Xpath(//button[@id="signup-submit"])`|
