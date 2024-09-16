Feature: Delete Booking from the API Restful booker

  Background:
    * url url_base_bookings

  Scenario: Validate delete booking by id
    Given def response_createbooking = call read('classpath:bookings/createBookings/createBookings.feature@CreateBooking')
    And def bookingid = response_createbooking.response.bookingid
    And print bookingid
    And path 'booking/' + bookingid
    And def response_token = call read('classpath:bookings/authentication/createToken.feature')
    And print response_token
    And def token = response_token.response.token
    And header Cookie = 'token='+ token
    When method DELETE
    Then status 201
    And assert responseTime < 2000

