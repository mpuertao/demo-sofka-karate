Feature: Tests for validate the functionality of Authentication of users from the API reqres.in

  I as user Require consume the authentication of users from the API for obtain the access token


  Background:
    * url 'https://reqres.in'


  Scenario: Test Case for the authentication successful of user
    Given path "api/login"
    And def body_request =
    """
    {
      "email": "eve.holt@reqres.in",
      "password": "cityslicka"
    }
    """
    And request body_request
    When method POST
    Then status 200
    And match response.token == "QpwL5tke4Pnpja7X4"
    And assert responseTime < 1000

  Scenario: Test Case for the authentication failed of user
    Given path "api/login"
    And request {email: "peter@klaven"}
    When method POST
    Then status 400
    And match response.error == "Missing password", "#string"
