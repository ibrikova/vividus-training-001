#Create API tests for the following scenarios:
#Use public API Swagger for Pets Store >> https://petstore.swagger.io/#/ 

Scenario: 1. Verify that allows creating a User
When I set request headers:
|name                        |value            |
|Content-Type                |application/json |
Given request body:
{
   "id": <id>,
   "username": "<username>",
   "firstName": "<firstName>",
   "lastName": "<lastName>",
   "email": "<email>",
   "password": "<password>",
   "phone": "<phone>",
   "userStatus": 5
}

When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/user`
Then response code is equal to `200`

Examples:
|email     |#{generate(Internet.emailAddress)}|
|firstName |#{generate(Name.firstName)}|
|lastName  |#{generate(Name.lastName)}|
|password  |#{generate(Internet.password)}|
|id        |#{generate(Number.numberBetween '1','100')}|
|username  |#{generate(Name.username)}|
|phone     |#{generate(Number.digits '10')}|


Scenario: 2. Verify that allows login as a User
When I execute HTTP GET request for resource with URL `https://petstore.swagger.io/v2/user/login?username=<username>&password=<password>`
When I set request headers:
|name                        |value            |
|Content-Type                |application/json |
Then response code is equal to `200`

Examples:
| email   |TomTest@gmail.com|           
| password|Tom1234Test|

Scenario: 3. Verify that allows creating the list of Users
Given request body:
[
    {
    "id": <id>,
   "username": "<username>",
   "firstName": "<firstName>",
   "lastName": "<lastName>",
   "email": "<email>",
   "password": "<password>",
   "phone": "<phone>",
   "userStatus": 5
    },
    {
    "id": <id>,
   "username": "<username>",
   "firstName": "<firstName>",
   "lastName": "<lastName>",
   "email": "<email>",
   "password": "<password>",
   "phone": "<phone>",
   "userStatus": 8
    }
]
When I set request headers:
|name                        |value            |
|Content-Type                |application/json |
When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/user/createWithList`

Then response code is equal to `200`

Examples:
|email     |#{generate(regexify '[a-z]{4}[A-Z]{3}')}@test.com|
|firstName |#{generate(Name.firstName)}|
|lastName  |#{generate(Name.lastName)}|
|password  |#{generate(Internet.password)}|
|id        |#{generate(Number.numberBetween '1','100')}|
|username  |#{generate(regexify '[A-Za-z0-9]{4}')}|
|phone     |#{generate(Number.digits '10')}|




Scenario: 4. Verify that allows Log out User
Scenario: 4. Verify that allows Log out User
When I set request headers:
|name                        |value            |
|Content-Type                |application/json |
When I execute HTTP GET request for resource with URL `https://petstore.swagger.io/v2/user/logout`
Then response code is equal to `200`





Scenario: 5. Verify that allows adding a new Pet
Given request body:
{
  "id": 109,
  "category": {
    "id": 1,
    "name": "Chameleon"
  },
  "name": "Rainbowie",
  "photoUrls": [
     ],
  "tags": [
    {
      "id": 2,
      "name": "ChaM"
    }
  ],
  "status": "available"
}

When I set request headers:
|name                        |value            |
|Content-Type                |application/json |
When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/pet`

Then response code is equal to `200`





Scenario: 6 Verify that allows updating Pet's image

When I set request headers:
|name         |value |
|Accept|application/json|
|Content-Type |multipart/form-data|
Given multipart request:
|name         |type      |value                   |contentType                      |
|rainbowie.jpg|image/jpeg|/pictures/rainbowie.jpeg|multipart/form-data; boundary=---|

When I execute HTTP POST request for resource with URL ` https://petstore.swagger.io/v2/pet/{petId}/uploadImage`

Then response code is equal to `200`



Scenario: 7. Verify that allows updating Pet's name and status
Given request body:
{
  "id": 109,
  "category": {
    "id": 1,
    "name": "Chameleon"
  },
  "name": " Violetie ",
  "photoUrls": ["rainbowie.jpg"],
  "tags": [
    {
      "id": 2,
      "name": "ChaM"
    }
  ],
  "status": " busy "
}

When I set request headers:
|name                        |value            |
|Content-Type                |application/json |

When I execute HTTP PUT request for resource with URL `https://petstore.swagger.io/v2/pet`

Then response code is equal to `200`





Scenario: 8. Verify that allows deleting Pet
When I set request headers:
|name                        |value            |
|Content-Type                |application/json |
When I execute HTTP DELETE request for resource with URL `https://petstore.swagger.io/v2/pet/${petId}`
Then response code is equal to `200`




