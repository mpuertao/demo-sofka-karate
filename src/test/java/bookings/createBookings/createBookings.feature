Feature: Create Booking from the API

  Background:
    * url url_base_bookings
    * header Accept = 'application/json'
    * def data_random = Java.type('utilities.DataRandom')

  @CreateBooking
  Scenario: Create booking successful
    Given path 'booking'
    And def firstname = data_random.getFirstnameRandom()
    And def totalprice = data_random.getNumberRandom()
    And def body_request = read('classpath:bookings/createBookings/BodyRequest.json')
    And request body_request
    When method POST
    Then status 200
    And def body_response = read('classpath:bookings/createBookings/BodyResponse.json')
    And match response == body_response


  @CP2
  Scenario: Create booking unsuccessful by body request incorrect
    Given path 'booking'
    And header Content-Type = 'application/json'
    And def body_request =
    """
    {
      "firstname": "Mao"
    }
    """
    And request body_request
    When method POST
    Then status 500
#    Then status 200
#    And def body_response = read('classpath:bookings/createBookings/BodyResponse.json')
#    And match response == body_response