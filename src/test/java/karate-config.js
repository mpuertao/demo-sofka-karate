function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
  // if (!env) {
  //   env = 'dev';
  // }
  var config = {
    env: env,
    base_url: 'https://restful-booker.herokuapp.com'
  }
  if (env == 'DEV') {
    base_url = 'https://restful-booker.herokuapp.com'
  } else if (env == 'QA') {
    base_url = 'https://reqres.in'
  }
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  karate.configure('ssl', true)
  return config;
}