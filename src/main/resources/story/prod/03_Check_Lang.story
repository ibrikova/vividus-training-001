Scenario: Check that allow to change language to UA
Given I am on main application page
When I click on element located by `By.xpath(//ul[@class="header__controls"]//button [contains(@class, 'location-selector__button')])`
When I wait until element located by `By.xpath(//button[@class="location-selector__button opened" and @aria-expanded="true"])` appears
When I click on element located by `By.xpath(//nav[@class="location-selector__panel"]//a[normalize-space(text())="Україна"])`
When I wait until element located by `By.xpath(//div[@class="location-selector-ui header__control"]/button[text()="Україна (UA)"])` appears