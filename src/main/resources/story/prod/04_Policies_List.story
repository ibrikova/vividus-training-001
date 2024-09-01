Scenario: Check the policies list
Given I am on main application page 
When I scroll element located by `name(policies)` into view
When I wait until element located by `By.xpath(//a[contains(., 'INVESTORS')])` appears
When I wait until element located by `By.xpath(//a[contains(., 'COOKIE POLICY')])` appears
When I wait until element located by `By.xpath(//a[contains(., 'OPEN SOURCE')])` appears
When I wait until element located by `By.xpath(//a[contains(., 'APPLICANT PRIVACY NOTICE')])` appears
When I wait until element located by `By.xpath(//a[contains(., 'PRIVACY POLICY')])` appears
When I wait until element located by `By.xpath(//a[contains(., 'WEB ACCESSIBILITY')])` appears

