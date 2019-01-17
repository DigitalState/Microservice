@api @config @delete
Feature: Delete configs

  Background:
    Given I am authenticated as the "system@system.ds" user from the tenant "b6ac25fe-3cd6-4100-a054-6bba2fc9ef18"

  Scenario: Delete a config
    When I add "Accept" header equal to "application/json"
    And I send a "DELETE" request to "/configs/b678a6cd-7b84-4495-9ac6-51c41c4320f6"
    Then the response status code should be 405
    And the header "Content-Type" should be equal to "application/json"
    And the response should be in JSON

