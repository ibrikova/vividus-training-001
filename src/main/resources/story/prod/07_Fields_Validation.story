Scenario: Check form's fields validation
Given I am on page with URL `https://www.epam.com/about/who-we-are/contact`
When I wait until element located by `By.xpath(//label[contains(., 'Select the Reason for Your Inquiry*')]/ancestor::div[@data-required='true'])` appears
When I wait until element located by `By.xpath(//label[contains(text(), 'First Name*')]/following-sibling::input[@aria-required='true'])` appears
When I wait until element located by `By.xpath(//label[contains(text(), 'Last Name*')]/following-sibling::input[@aria-required='true'])` appears
When I wait until element located by `By.xpath(//label[contains(text(), 'Email*')]/following-sibling::input[@aria-required='true'])` appears
When I wait until element located by `By.xpath(//label[contains(text(), 'Phone*')]/following-sibling::input[@aria-required='true'])` appears
When I wait until element located by `By.xpath(//label[contains(text(), 'Location*')]/ancestor::div[@class='country-field-ui location-fields__column'][@data-required='true'])` appears
When I wait until element located by `By.xpath(//label[contains(., 'How did you hear about EPAM?*')]/ancestor::div[@data-required='true'])` appears