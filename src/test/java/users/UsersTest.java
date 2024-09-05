package users;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class UsersTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:users")
                //.outputCucumberJson(true)
                .parallel(Runtime.getRuntime().availableProcessors());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
