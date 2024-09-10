Feature:

  Background:
    * url 'http://webservices.oorsprong.org/websamples.countryinfo/CountryInfoService.wso'

  @CP1
  Scenario Outline: Validate the capital city By Country successful
    Given request read('classpath:countries/RequestCapitalByCountry.xml')
    And header Content-Type = 'text/xml'
    When soap action ('CapitalCity')
    Then status 200
    And match response /Envelope/Body/CapitalCityResponse/CapitalCityResult == '<capitalcity>'
  Examples:
    | isocode | capitalcity |
    | PA      | Panama      |
    | CO      | Bogota      |
    | IT      | Rome        |

  @CP2
  Scenario: Get IsoCode By CountryName successful
    Given request read("classpath:countries/RequestIsoCodeByName.xml")
    And header Content-Type = 'application/soap+xml'
    When method POST
    Then status 200