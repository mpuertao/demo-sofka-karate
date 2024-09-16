Feature: Tests for webservice of countries

  Background:
    * url url_countries_soap

  Scenario Outline: Validate get information of capitalcity  by countries <isocode> successful
    Given request read('classpath:countries/RequestCapitalCityByCountries.xml')
    #SOAP 1.2
    #And header Content-Type = 'application/soap+xml'
    #SOAP 1.1
    When soap action ('CapitalCity')
    #SOAP 1.2
    #When method POST
    Then status 200
    And match response /Envelope/Body/CapitalCityResponse/CapitalCityResult == '<capitalcity>'
  Examples:
    | isocode | capitalcity |
    | PA      | Panama      |
    | CO      | Bogota      |
    | GR      | Athens      |


