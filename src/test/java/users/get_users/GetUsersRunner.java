package users.get_users;

import com.intuit.karate.junit5.Karate;

class GetUsersRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:users/get_users").relativeTo(getClass());
    }    

}
