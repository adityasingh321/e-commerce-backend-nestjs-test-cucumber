# Feature: all the features intended for custmor


# Background: login as customeer
# Given I store the raw value { "email" : "rauundom11@email.com", "password": "ranuudom11123" } as payload in scenario scope
# And I set body to `payload`
# When I POST to /auth/login
# Then response code should be 200
# Then response body should be valid json
# Then I store the value of body path $.token as authToken in global scope


# Scenario: get product list
# Given I set token header to `authToken`
# When I GET /products 
# Then response code should be 200
# Then response body should be valid json
# Then response body should contain products


# Scenario: get a single product
# Given I set token header to `authToken`
# When I GET /products/63e5da0f7a7580b6cbbfee3c 
# Then response code should be 200
# Then response body should be valid json
# Then response body should contain product


# Scenario: get the cart
# Given I set token header to `authToken`
# When I GET /ecom 
# Then response code should be 200
# Then response body should be valid json
# Then response body should contain cart


# Scenario: add a product to the cart
# Given I set token header to `authToken`
# When I POST to /ecom/63e5da437a7580b6cbbfee3e 
# Then response code should be 201
# Then response body should be valid json
# Then response body should contain cart


# Scenario: order a product
# Given I store the raw value { "address" : "bilaspur", "pin": "493132" } as payload in scenario scope
# And I set body to `payload`
# And I set token header to `authToken`
# When I POST to /ecom/order
# Then response body should be valid json
# Then response body should contain message


# Scenario: cancel the orderedproduct
# Given I set token header to `authToken`
# When I DELETE /ecom/cancel/63f5e4fa12a65cdb41836f0f 
# Then response code should be 200

# order id -
# 63f5a601f1e4a0515ace7775
# 63f5a825f1e4a0515ace777b
# 63f5b05d6af926543b8316ff
# 63f5e34312a65cdb41836ef1
# 63f5e49612a65cdb41836eff




