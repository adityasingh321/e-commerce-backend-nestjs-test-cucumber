Feature: admin can add update and delete products

Background: login as admin
Given I store the raw value { "email" : "adityayarize@gmail.com", "password": "12345" } as payload in scenario scope
And I set body to `payload`
When I POST to /auth/login
Then response code should be 200
Then response body should be valid json
Then I store the value of body path $.token as authToken in global scope


Scenario: add a new product
And I store the raw value { "name" : "name", "desc": "good test product", "price": 123 } as payload in scenario scope
And I set body to `payload`
And I set token header to `authToken`
When I POST to /products
Then response body should be valid json
Then response code should be 201
Then response body should contain product
Then response body path $.product.name should be name
Then response body path $.product.desc should be good test product
Then response body path $.product.price should be 123


Scenario: update an existing product
Given I store the raw value { "name" : "updated product", "desc": "updated good test product", "price": 1123 } as payload in scenario scope
And I set body to `payload`
And I set token header to `authToken`
When I PATCH /products/63f468d449bb65f978fe53a7 
Then response code should be 200
Then response body should contain product
Then response body path $.product.name should be updated product
Then response body path $.product.desc should be updated good test product
Then response body path $.product.price should be 1123


# Scenario: delete an existing product
# Given I set token header to `authToken`
# When I DELETE /products/63f4628484d063d500336c5a 
# Then response code should be 200
# Then response body should contain message


# 63f457be84d063d500336c47
# 63f45b7384d063d500336c4f
# 63f4609484d063d500336c54
    


# Scenario: login as admin
# Given I store the raw value { "email" : "adityayarize@gmail.com", "password": "12345" } as payload in scenario scope
# And I set body to `payload`
# When I POST to /auth/login
# Then response code should be 200
# Then response body should be valid json
# Then response body should contain token






