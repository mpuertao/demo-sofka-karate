Feature: Get boooking by id of the API restfulbooker

  I as user require get booking by id for validate integrity of the response

  Background:
    * url 'https://restful-booker.herokuapp.com'
    * def response_booking = call read('classpath:bookings/createBookings/createBookings.feature@CreateBooking')

  Scenario: Request type get to api for validate booking by ID successful
    Given header Accept = 'application/json'
    And print response_booking
    And def bookingId = response_booking.response.bookingid
    And print bookingId
    And path 'booking/' + bookingId

    When method GET
    Then status 200
    And def body_response = read('classpath:bookings/getBookings/BodyResponse.json')
    And match response == body_response