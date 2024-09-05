package users.authentication;


import com.intuit.karate.junit5.Karate;

public class AuthenticationRunner {

    @Karate.Test
    Karate authenticationTest() {
        return Karate.run("classpath:users/authentication/authentication.feature");
    }
}
