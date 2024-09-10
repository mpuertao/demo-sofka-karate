function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    base_url_booking: 'https://restful-booker.herokuapp.com',
    base_url_users: '',
    base_url_countries_soap: 'http://webservices.oorsprong.org/websamples.countryinfo/CountryInfoService.wso'
  }
  if (env == 'dev'){
    config.base_url_booking = 'https://restful-booker-DEV.herokuapp.com'
    config.base_url_users = 'https://users-dev.com'
  } else if (env == 'QA') {
    config.base_url_booking = 'https://restful-booker-QA.herokuapp.com'
  }
  return config;
}