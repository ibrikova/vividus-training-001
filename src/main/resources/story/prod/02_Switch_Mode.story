Scenario: Check the ability to switch Light / Dark mode
Given I am on main application page
When I click on element located by `By.xpath(//*[@id="wrapper"]/div[2]/div[1]/header/div/div/div[2]/section)`
When I wait until element located by `By.xpath(//body[contains(@class, 'light-mode')])` appears


