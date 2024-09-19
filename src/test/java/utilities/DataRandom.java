package utilities;

import com.github.javafaker.Faker;

public class DataRandom {
    public static String getFirstnameRandom(){
        Faker faker = new Faker();
        String firstName = faker.name().firstName();
        return firstName;
    }

    public static String getNumberRandom(){
        Faker faker = new Faker();
        String number = faker.number().digits(3);
        return number;
    }

}
