Feature: Get boooking by id of the API restfulbooker

  I as user require get booking by id for validate integrity of the response

  Background:
    * url url_base_bookings
    * def response_booking = call read('classpath:bookings/createBookings/createBookings.feature@CreateBooking')

  Scenario: Request type get to api for validate booking by ID successful
    Given header Accept = 'application/json'
    And def bookingId = response_booking.response.bookingid
    And path 'booking/' + bookingId
    When method GET
    Then status 200
    And def body_response = read('classpath:bookings/getBookings/BodyResponse.json')
    And match response == body_response