Feature: Put boooking by id of the API restfulbooker

I as user require put booking by id for validate integrity of the response

  Background:
    * url url_base_bookings
    * def response_booking = call read('classpath:bookings/createBookings/createBookings.feature@CreateBooking')
    * def auth_token = call read('classpath:bookings/authentication/createToken.feature')

  Scenario: Request type get to api for validate booking by ID successful
    Given header Accept = 'application/json'
    And header Cookie = 'token=' + auth_token.response.token
    And def bookingId = response_booking.response.bookingid
    And path 'booking/' + bookingId
    And request
    """
      {
        "firstname" : "Don Mauricio",
        "lastname" : "Puerta",
        "totalprice" : 111,
        "depositpaid" : true,
        "bookingdates" : {
          "checkin" : "2018-01-01",
          "checkout" : "2019-01-01"
        },
        "additionalneeds" : "Breakfast"
      }
    """
    When method PUT
    Then status 200
    And match response.firstname == "Don Mauricio"