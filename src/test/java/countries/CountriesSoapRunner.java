package countries;

import com.intuit.karate.junit5.Karate;

public class CountriesSoapRunner {

    @Karate.Test
    Karate runCountriesSoap() {
        return Karate
                .run("classpath:countries/countries-soap.feature");
    }
}
