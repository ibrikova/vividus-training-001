Scenario: Check that the Company logo on the header lead to the main page
Given I am on page with URL `https://www.epam.com/about`
When I click on element located by `By.xpath(//a[@class="header__logo-link"])`
Then the page with the URL 'https://www.epam.com/' is loaded