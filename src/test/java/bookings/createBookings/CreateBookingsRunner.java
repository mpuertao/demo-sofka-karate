package bookings.createBookings;

import com.intuit.karate.junit5.Karate;

public class CreateBookingsRunner {

    @Karate.Test
    Karate testCreateBookings() {
        return Karate
                .run("classpath:bookings/createBookings/createBookings.feature");
    }
}
