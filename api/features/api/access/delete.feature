@api @access @delete
Feature: Delete accesses

  Background:
    Given I am authenticated as the "system@system.ds" user from the tenant "b6ac25fe-3cd6-4100-a054-6bba2fc9ef18"

  Scenario: Delete an access
    When I add "Accept" header equal to "application/json"
    And I send a "DELETE" request to "/accesses/7fe88e83-5fdb-4487-bb78-caa897e6911f"
    Then the response status code should be 204
    And the response should be empty

  Scenario: Read the deleted access
    When I add "Accept" header equal to "application/json"
    And I send a "GET" request to "/accesses/7fe88e83-5fdb-4487-bb78-caa897e6911f"
    Then the response status code should be 404
    And the header "Content-Type" should be equal to "application/json"
