Scenario: Check that allows to download report 
Given I am on page with URL `https://www.epam.com/about`
When I click on element located by `By.xpath(//span[normalize-space(text())="DOWNLOAD"])`
