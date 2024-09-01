#Use public e-shop site >> https://demowebshop.tricentis.com/

Scenario: 1. Verify that allows register a User
Given I am on page with URL `https://demowebshop.tricentis.com/`
When I click on element located by `By.xpath(//a[text()='Register'])`
When I wait until element located by `By.xpath(//h1[text()='Register'])` appears
When I click on element located by `By.xpath(//input[@id='gender-female'])`
When I enter `<firstName>` in field located by `By.xpath(//input[@id='FirstName'])`
When I enter `<lastName>` in field located by `By.xpath(//input[@id='LastName'])`
When I enter `<email>` in field located by `By.xpath(//input[@id='Email'])`
When I enter `<password>` in field located by `By.xpath(//input[@id='Password'])`
When I enter `<password>` in field located by `By.xpath(//input[@id='ConfirmPassword'])`
When I click on element located by `By.xpath(//input[@id='register-button'])`
When I wait until element located by `By.xpath(//div[@class='result'][contains(., 'Your registration completed')])` appears
When I click on element located by `By.xpath(//a[@class='ico-logout'])`


Examples:
|email                             |firstName                  |lastName                  |password                      |
|#{generate(Internet.emailAddress)}|#{generate(Name.firstName)}|#{generate(Name.lastName)}|#{generate(Internet.password)}|



Scenario: 2. Verify User Login
Given I am on page with URL `https://demowebshop.tricentis.com/`
When I click on element located by `By.xpath(//a[@class='ico-login'])`
When I wait until element located by `By.xpath(//h1[text()='Welcome, Please Sign In!'])` appears
When I enter `<email>` in field located by `By.xpath(//input[@id='Email'])`
When I enter `<password>` in field located by `By.xpath(//input[@id='Password'])`
When I click on element located by `By.xpath(//input[@id='RememberMe'])`
When I click on element located by `By.xpath(//input[@value='Log in'])`
When I wait until element located by `By.xpath(//div[@class='header-links']//a[@class='account'])` appears


Examples:
| email              | password    |
| TomTest@gmail.com  | Tom1234Test |


Scenario: 3. Verify that 'Computers' group has 3 sub-groups with correct names
Given I am on page with URL `https://demowebshop.tricentis.com/` 
When I click on element located by `By.xpath(//ul[@class="top-menu"]//a[normalize-space(text())='Computers'])`
When I wait until element located by `By.xpath(//ul[@class='sublist']//a[contains(text(), 'Desktops')])` appears
When I wait until element located by `By.xpath(//ul[@class='sublist']//a[contains(text(), 'Notebooks')])` appears
When I wait until element located by `By.xpath(//ul[@class='sublist']//a[contains(text(), 'Accessories')])` appears

Scenario: 4. Verify that allows sorting items (different options)
Given I am on page with URL `https://demowebshop.tricentis.com/books`
When I click on element located by `By.xpath(//select[@id="products-orderby"])`
When I click on element located by `By.xpath(//select[@id="products-orderby"]/option[text()="Name: A to Z"])`
When I wait until element located by `By.xpath(//select[@id='products-orderby']/option[text()='Name: A to Z' and @selected='selected'])` appears


When I click on element located by `By.xpath(//select[@id="products-orderby"])`
When I click on element located by `By.xpath(//select[@id="products-orderby"]/option[text()="Name: Z to A"])`
When I wait until element located by `By.xpath(//select[@id='products-orderby']/option[text()='Name: Z to A' and @selected='selected'])` appears

When I click on element located by `By.xpath(//select[@id="products-orderby"])`
When I click on element located by `By.xpath(//select[@id="products-orderby"]/option[text()="Price: Low to High"])`
When I wait until element located by `By.xpath(//select[@id='products-orderby']/option[text()='Price: Low to High' and @selected='selected'])` appears

When I click on element located by `By.xpath(//select[@id="products-orderby"])`
When I click on element located by `By.xpath(//select[@id="products-orderby"]/option[text()="Price: High to Low"])`
When I wait until element located by `By.xpath(//select[@id='products-orderby']/option[text()='Price: High to Low' and @selected='selected'])` appears

When I click on element located by `By.xpath(//select[@id="products-orderby"])`
When I click on element located by `By.xpath(//select[@id="products-orderby"]/option[text()="Created on"])`
When I wait until element located by `By.xpath(//select[@id='products-orderby']/option[text()='Created on' and @selected='selected'])` appears



Scenario: 5. Verify that allows changing number of items on page
Given I am on page with URL `https://demowebshop.tricentis.com/books`

When I click on element located by `By.xpath(//select[@id='products-pagesize'])`
When I click on element located by `By.xpath(//option[text()='4'])`
When I wait until element located by `By.xpath(//option[@selected='selected' and text()='4'])` appears

When I click on element located by `By.xpath(//select[@id='products-pagesize'])`
When I click on element located by `By.xpath(//option[text()='8'])`
When I wait until element located by `By.xpath(//option[@selected='selected' and text()='8'])` appears

When I click on element located by `By.xpath(//select[@id='products-pagesize'])`
When I click on element located by `By.xpath(//option[text()='12'])`
When I wait until element located by `By.xpath(//option[@selected='selected' and text()='12'])` appears

Scenario: 6. Verify that allows adding an item to the Wishlist
Given I am on page with URL `https://demowebshop.tricentis.com/black-white-diamond-heart`
When I click on element located by `By.xpath(//input[@value="Add to wishlist"])`
When I wait until element located by `By.xpath(//*[@id="bar-notification"]/p)` appears

Scenario: 7. Verify that allows adding an item to the cart
Given I am on page with URL `https://demowebshop.tricentis.com/black-white-diamond-heart`
When I click on element located by `By.xpath(//div[@class="add-to-cart"]//input[@value="Add to cart"])`
When I wait until element located by `By.xpath(//*[@id="bar-notification"]/p)` appears

Scenario: 8. Verify that allows removing an item from the cart
Given I am on page with URL `https://demowebshop.tricentis.com/cart`
When I click on element located by `By.xpath(//input[@name="removefromcart"])`
When I click on element located by `By.xpath(//input[@name="updatecart"])`
When I wait until element located by `By.xpath(//*[contains(text(), 'Your Shopping Cart is empty!')])` appears


Scenario: 9. Verify that allows checkout an item 
Given I am on page with URL `https://demowebshop.tricentis.com/black-white-diamond-heart`
When I click on element located by `By.xpath(//div[@class="add-to-cart"]//input[@value="Add to cart"])`
When I wait until element located by `By.xpath(//*[@id="bar-notification"]/p)` appears
When I click on element located by `By.xpath(//*[@id="topcartlink"]/a/span[1])`
Then the page with the URL 'https://demowebshop.tricentis.com/cart' is loaded
When I click on element located by `By.xpath(//input[@id='termsofservice'])`
When I click on element located by `By.xpath(//*[@id="checkout"])`
Then the page with the URL 'https://demowebshop.tricentis.com/onepagecheckout' is loaded


