# Feature: User authentication

# Scenario: register new user
# Given I store the raw value { "email" : "db@email.com", "password": "ranuudom11123" } as payload in scenario scope
# And I set body to `payload`
# When I POST to /auth/register
# Then response code should be 201
# Then response body should contain user


# Scenario: login as user
# Given I store the raw value { "email" : "rauundom11@email.com", "password": "ranuudom11123" } as payload in scenario scope
# And I set body to `payload`
# When I POST to /auth/login
# Then response code should be 200
# Then response body should be valid json
# Then response body should contain token
# Then I store the value of body path "$.token" as access token





