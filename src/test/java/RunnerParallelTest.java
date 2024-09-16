import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class RunnerParallelTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:")
                //.outputCucumberJson(true)
                .parallel(Runtime.getRuntime().availableProcessors());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
