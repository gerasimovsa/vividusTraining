GivenStories: task2/trelloSignIn.story

Scenario: Set baselines
When I refresh the page
When I go to the relative URL '<url>'
When I wait until element located `By.Xpath(//span[contains(text(),"<element>")])` appears
When I establish baseline with `<name>` ignoring:
|ELEMENT                      |
|By.Xpath(//div[@class="_1cWvobXLvxzjyb"])|
Examples:
|element|name|url|
|Business Templates|Business|/templates/business|
|Design Templates|Design|/templates/design|
|Education Templates|Education|/templates/education|
|Engineering Templates|Engineering|/templates/engineering|
|Marketing Templates|Marketing|/templates/marketing|

