package bookings.getBookings;


import com.intuit.karate.junit5.Karate;

public class GetBookingByIdRunner {

    @Karate.Test
    Karate testGetBookingById() {
        return Karate.run("classpath:bookings/getBookings/getBookingById.feature");
    }

}
