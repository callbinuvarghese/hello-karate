Feature: Hello World

  Background:
    Given url baseUrl
    Given path '/api/hello'

  Scenario: Hello world

    When method GET
    Then status 200
    And match $ == "Hello world!"

  Scenario: Hello with a param

    Given param name = "Binu"
    When method GET
    Then status 200
    And match $ == "Hello Binu!"
