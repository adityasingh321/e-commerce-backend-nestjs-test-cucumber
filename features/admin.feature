# Feature: admin can add update and delete products

# Background: login as admin
# Given I store the raw value { "email" : "adityayarize@gmail.com", "password": "12345" } as payload in scenario scope
# And I set body to `payload`
# When I POST to /auth/login
# Then response code should be 200
# Then response body should be valid json
# Then I store the value of body path $.token as authToken in global scope


# Scenario: add a new product
# And I store the raw value { "name" : "name", "desc": "good test product", "price": 123 } as payload in scenario scope
# And I set body to `payload`
# And I set token header to `authToken`
# When I POST to /products
# Then response body should be valid json
# Then response code should be 201
# Then response body should contain product
# Then value of scenario variable `payload.name` should be `$.product.name`
# Then value of scenario variable `payload.desc` should be `$.product.desc`
# Then value of scenario variable `payload.price` should be `$.product.price`


# Scenario: update an existing product
# Given I store the raw value { "name" : "updated product", "desc": "updated good test product", "price": 1123 } as payload in scenario scope
# And I set body to `payload`
# And I set token header to `authToken`
# When I PATCH /products/63f468d449bb65f978fe53a7 
# Then response code should be 200
# Then response body should contain product
# Then value of scenario variable `payload.name` should be `$.product.name`
# Then value of scenario variable `payload.desc` should be `$.product.desc`
# Then value of scenario variable `payload.price` should be `$.product.price`


# # Scenario: delete an existing product
# # Given I set token header to `authToken`
# # When I DELETE /products/63f4628484d063d500336c5a 
# # Then response code should be 200
# # Then response body should contain message


# # 63f457be84d063d500336c47
# # 63f45b7384d063d500336c4f
# # 63f4609484d063d500336c54


# Scenario: login as admin
# Given I store the raw value { "email" : "adityayarize@gmail.com", "password": "12345" } as payload in scenario scope
# And I set body to `payload`
# When I POST to /auth/login
# Then response code should be 200
# Then response body should be valid json
# Then response body should contain token



# # <------------------------------------------------------ Edge Cases ------------------------------------------------------>

# Scenario: delete a product with incorrect id
# Given I set token header to `authToken`
# When I DELETE /products/63f4628484d063d500336c5 
# Then response code should be 400
# Then response body should contain message

# Scenario: delete a product without passing id in params
# Given I set token header to `authToken`
# When I DELETE /products/ 
# Then response code should be 404

# Scenario: update a product with incorrect id
# Given I store the raw value { "name" : "updated product", "desc": "updated good test product", "price": 1123 } as payload in scenario scope
# And I set body to `payload`
# And I set token header to `authToken`
# When I PATCH /products/63f468d449bb65f978fe53a 
# Then response code should be 400

# Scenario: add a new product without passing name
# And I store the raw value {"desc": "good test product", "price": 123 } as payload in scenario scope
# And I set body to `payload`
# And I set token header to `authToken`
# When I POST to /products
# Then response body should be valid json
# Then response code should be 400

# Scenario: login as admin with wrong password
# Given I store the raw value { "email" : "adityayarize@gmail.com", "password": "32345" } as payload in scenario scope
# And I set body to `payload`
# When I POST to /auth/login
# Then response code should be 404
# Then response body should be valid json
# Then response body should not contain token


    









