package bookings.deleteBookings;

import com.intuit.karate.junit5.Karate;

public class DeleteBookingsRunner {

    @Karate.Test
    Karate run() {
        return Karate.run("classpath:bookings/deleteBookings/deleteBookings.feature");
    }
}
