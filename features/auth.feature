Feature: User authentication

# Scenario: register new user
# Given I store the raw value { "email" : "dbnewtest@email.com", "password": "ranuudom11123" } as payload in scenario scope
# And I set body to `payload`
# When I POST to /auth/register
# Then response code should be 201
# Then response body should contain user


Scenario: login as user
Given I store the raw value { "email" : "rauundom11@email.com", "password": "ranuudom11123" } as payload in scenario scope
And I set body to `payload`
When I POST to /auth/login
Then response code should be 200
Then response body should be valid json
Then response body should contain token
Then I store the value of body path "$.token" as access token


# <------------------------------------------------------ Edge Cases ------------------------------------------------------>


Scenario: login as user with incorrect password
Given I store the raw value { "email" : "rauundom11@email.com", "password": "wrongPass" } as payload in scenario scope
And I set body to `payload`
When I POST to /auth/login
Then response code should be 404
Then response body should be valid json
Then response body should not contain token

Scenario: login as user with email that is not registered
Given I store the raw value { "email" : "wrongEmail@email.com", "password": "ranuudom11123" } as payload in scenario scope
And I set body to `payload`
When I POST to /auth/login
Then response code should be 404
Then response body should be valid json
Then response body should not contain token

Scenario: login as user with incorrect email and password
Given I store the raw value { "email" : "wrongEmail@email.com", "password": "wrongPass" } as payload in scenario scope
And I set body to `payload`
When I POST to /auth/login
Then response code should be 404
Then response body should be valid json
Then response body should not contain token


Scenario: register new user without email
Given I store the raw value { "password": "ranuudom11123" } as payload in scenario scope
And I set body to `payload`
When I POST to /auth/register
Then response code should be 400
Then response body should contain message


Scenario: register new user without password
Given I store the raw value { "email" : "db@email.com"} as payload in scenario scope
And I set body to `payload`
When I POST to /auth/register
Then response code should be 400
Then response body should contain message


Scenario: register new user without email and password
When I POST to /auth/register
Then response code should be 400
Then response body should contain message






