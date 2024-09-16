@ignore
Feature: create token for authentication for authorization of modificate


  Background:
    * url url_base_bookings

  @CreateToken
  Scenario: Create token successful
    Given path 'auth'
    And request
    """
    {
      "username" : "admin",
      "password" : "password123"
    }
    """
    When method POST
    Then status 200
    And match response == { token: "#string"}
