Feature: Create and Read persons ...

  Background:
    * url baseUrl
    * def personBase = '/api/person/'

  Scenario: Create a person

    Given path personBase
    And request { firstName: 'Devin', lastName: 'Bajaj', age: 20 }
    And header Accept = 'application/json'
    When method post
    Then status 200
    And match response == '8'

  Scenario: Get person we just created

    Given path personBase + '6'
    When method GET
    Then status 200
    And match response == { firstName: 'Devin', lastName: 'Bajaj', age: 20 }