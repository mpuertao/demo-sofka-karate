Feature: Tests for get users of the API reqres.in

  I as user Require consult information of user For validate integrity

  Background:
    * url 'https://reqres.in'

  @CP1
  Scenario: Validate request successful for get single user of the API
    Given path "api/users/2"
    And def body_response = read("classpath:users/get_users/body_response.json")
    And def body_schema_response = read("classpath:users/get_users/body_schema_response.json")
    When method GET
    Then status 200
    And match response == body_response
    And match response == body_schema_response
  