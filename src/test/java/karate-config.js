function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);

  var config = {
    env: env,
    url_base_bookings: 'https://restful-booker.herokuapp.com',
    url_countries_soap: 'http://webservices.oorsprong.org/websamples.countryinfo/CountryInfoService.wso',
    //username: 'mao',
    //password: '123'
  }

  if( env == 'DEV') {
    config.url_base_bookings = 'https://restful-booker.herokuapp.com'
  } else if(env == 'QA') {
    config.url_base_bookings = 'https://restful-booker.herokuapp.com'
  }

  karate.configure('ssl', true)
  karate.configure('connectTimeout', 5000)
  karate.configure('readTimeout', 5000)
  //karate.configure('proxy', {uri: 'http://localhost:8080', username: 'mao', password: '123'})

  return config;
}