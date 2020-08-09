@api @security @acl @metadata
Feature: Validate acl permissions on metadata endpoints

  Scenario: Browse all metadata with permission scope `owner = BusinessUnit`
    Given I am authenticated as the "system@system.ds" user with identity role "df0d6e00-3582-4ccc-92f8-0425ba35bb0a" from the tenant "64c82518-017d-4fb2-9fcf-3926da3616e6"
    When I add "Accept" header equal to "application/json"
    And I send a "GET" request to "/metadata"
    Then the response status code should be 200
    And the header "Content-Type" should be equal to "application/json; charset=utf-8"
    And the response should be in JSON
    And the JSON should be valid according to this schema:
    """
    {
      "type": "array",
      "minItems": 6,
      "maxItems": 6,
      "items": {
        "type": "object",
        "properties": {
          "uuid": {
            "type": "string",
            "enum": [
              "6211c7bd-a680-40ff-89e0-4c98aba229db",
              "e816d4d3-76a1-4082-b99c-39c3e81cbb83",
              "c95a4acb-259a-40cd-ac0b-a303e2d1c894",
              "a235421c-0502-4ff3-b152-9d58ba279f92",
              "8df80b6e-5f45-4e87-bd75-5f62ee86d4b0",
              "82f3e242-6d6f-4b22-bdee-bc8dcb698514"
            ]
          }
        }
      }
    }
    """

  Scenario: Browse all metadata with permission scope `owner = Service`
    Given I am authenticated as the "system@system.ds" user with identity role "359e49d3-2fd0-4a68-b5e2-99b74cd6a34c" from the tenant "64c82518-017d-4fb2-9fcf-3926da3616e6"
    When I add "Accept" header equal to "application/json"
    And I send a "GET" request to "/metadata"
    Then the response status code should be 200
    And the header "Content-Type" should be equal to "application/json; charset=utf-8"
    And the response should be in JSON
    And the JSON should be valid according to this schema:
    """
    {
      "type": "array",
      "minItems": 2,
      "maxItems": 2,
      "items": {
        "type": "object",
        "properties": {
          "uuid": {
            "type": "string",
            "enum": [
              "77954099-86df-47e5-9c05-57befd04efef",
              "99c0ccfd-ed42-41e0-bf1a-5230acd9a129"
            ]
          }
        }
      }
    }
    """

  Scenario: Browse all metadata with permission scope `owner = Service and owner uuid = 99c0ccfd-ed42-41e0-bf1a-5230acd9a129`
    Given I am authenticated as the "system@system.ds" user with identity role "9c8cb648-b6fe-4730-8d5d-d8ad0cbe9072" from the tenant "64c82518-017d-4fb2-9fcf-3926da3616e6"
    When I add "Accept" header equal to "application/json"
    And I send a "GET" request to "/metadata"
    Then the response status code should be 200
    And the header "Content-Type" should be equal to "application/json; charset=utf-8"
    And the response should be in JSON
    And the JSON should be valid according to this schema:
    """
    {
      "type": "array",
      "minItems": 1,
      "maxItems": 1,
      "items": {
        "type": "object",
        "properties": {
          "uuid": {
            "type": "string",
            "enum": [
              "99c0ccfd-ed42-41e0-bf1a-5230acd9a129"
            ]
          }
        }
      }
    }
    """

  Scenario: Browse all metadata with permission scope `generic`
    Given I am authenticated as the "system@system.ds" user with identity role "fd8a9110-f41e-46e9-8109-31db9e187f71" from the tenant "64c82518-017d-4fb2-9fcf-3926da3616e6"
    When I add "Accept" header equal to "application/json"
    And I send a "GET" request to "/metadata"
    Then the response status code should be 200
    And the header "Content-Type" should be equal to "application/json; charset=utf-8"
    And the response should be in JSON
    And the JSON should be valid according to this schema:
    """
    {
      "type": "array",
      "minItems": 8,
      "maxItems": 8,
      "items": {
        "type": "object",
        "properties": {
          "uuid": {
            "type": "string",
            "enum": [
              "6211c7bd-a680-40ff-89e0-4c98aba229db",
              "e816d4d3-76a1-4082-b99c-39c3e81cbb83",
              "c95a4acb-259a-40cd-ac0b-a303e2d1c894",
              "a235421c-0502-4ff3-b152-9d58ba279f92",
              "8df80b6e-5f45-4e87-bd75-5f62ee86d4b0",
              "82f3e242-6d6f-4b22-bdee-bc8dcb698514",
              "77954099-86df-47e5-9c05-57befd04efef",
              "99c0ccfd-ed42-41e0-bf1a-5230acd9a129"
            ]
          }
        }
      }
    }
    """

  Scenario: Browse all metadata with permission scope `property uuid = 6211c7bd-a680-40ff-89e0-4c98aba229db`
    Given I am authenticated as the "system@system.ds" user with identity role "c57e3d26-792b-492f-8095-b96bc83c8ba5" from the tenant "64c82518-017d-4fb2-9fcf-3926da3616e6"
    When I add "Accept" header equal to "application/json"
    And I send a "GET" request to "/metadata"
    Then the response status code should be 200
    And the header "Content-Type" should be equal to "application/json; charset=utf-8"
    And the response should be in JSON
    And the JSON should be valid according to this schema:
    """
    {
      "type": "array",
      "minItems": 1,
      "maxItems": 1,
      "items": {
        "type": "object",
        "properties": {
          "uuid": {
            "type": "string",
            "enum": [
              "6211c7bd-a680-40ff-89e0-4c98aba229db"
            ]
          }
        }
      }
    }
    """

  Scenario: Browse all metadata with permission scope `property title.en = Metadata 1`
    Given I am authenticated as the "system@system.ds" user with identity role "37a96b86-1610-492c-86b1-a57a2504d562" from the tenant "64c82518-017d-4fb2-9fcf-3926da3616e6"
    When I add "Accept" header equal to "application/json"
    And I send a "GET" request to "/metadata"
    Then the response status code should be 200
    And the header "Content-Type" should be equal to "application/json; charset=utf-8"
    And the response should be in JSON
    And the JSON should be valid according to this schema:
    """
    {
      "type": "array",
      "minItems": 1,
      "maxItems": 1,
      "items": {
        "type": "object",
        "properties": {
          "uuid": {
            "type": "string",
            "enum": [
              "6211c7bd-a680-40ff-89e0-4c98aba229db"
            ]
          }
        }
      }
    }
    """

  Scenario: Browse all metadata with permission scope `property data.attribute = true`
    Given I am authenticated as the "system@system.ds" user with identity role "7f4a80e0-8720-40af-b424-f4c827c17987" from the tenant "64c82518-017d-4fb2-9fcf-3926da3616e6"
    When I add "Accept" header equal to "application/json"
    And I send a "GET" request to "/metadata"
    Then the response status code should be 200
    And the header "Content-Type" should be equal to "application/json; charset=utf-8"
    And the response should be in JSON
    And the JSON should be valid according to this schema:
    """
    {
      "type": "array",
      "minItems": 1,
      "maxItems": 1,
      "items": {
        "type": "object",
        "properties": {
          "uuid": {
            "type": "string",
            "enum": [
              "6211c7bd-a680-40ff-89e0-4c98aba229db"
            ]
          }
        }
      }
    }
    """

  Scenario: Browse all metadata with permission scope `property data.attribute = "string""`
    Given I am authenticated as the "system@system.ds" user with identity role "72e33a99-d9c1-41d3-b2b6-c360ba03b016" from the tenant "64c82518-017d-4fb2-9fcf-3926da3616e6"
    When I add "Accept" header equal to "application/json"
    And I send a "GET" request to "/metadata"
    Then the response status code should be 200
    And the header "Content-Type" should be equal to "application/json; charset=utf-8"
    And the response should be in JSON
    And the JSON should be valid according to this schema:
    """
    {
      "type": "array",
      "minItems": 1,
      "maxItems": 1,
      "items": {
        "type": "object",
        "properties": {
          "uuid": {
            "type": "string",
            "enum": [
              "e816d4d3-76a1-4082-b99c-39c3e81cbb83"
            ]
          }
        }
      }
    }
    """

  Scenario: Browse all metadata with permission scope `property data.attribute = 123`
    Given I am authenticated as the "system@system.ds" user with identity role "e37f9cea-2f85-46e8-ad02-96bc0f4ce24a" from the tenant "64c82518-017d-4fb2-9fcf-3926da3616e6"
    When I add "Accept" header equal to "application/json"
    And I send a "GET" request to "/metadata"
    Then the response status code should be 200
    And the header "Content-Type" should be equal to "application/json; charset=utf-8"
    And the response should be in JSON
    And the JSON should be valid according to this schema:
    """
    {
      "type": "array",
      "minItems": 1,
      "maxItems": 1,
      "items": {
        "type": "object",
        "properties": {
          "uuid": {
            "type": "string",
            "enum": [
              "c95a4acb-259a-40cd-ac0b-a303e2d1c894"
            ]
          }
        }
      }
    }
    """

  Scenario: Browse all metadata with permission scope `property data.attribute = 4.56`
    Given I am authenticated as the "system@system.ds" user with identity role "fd71f9c1-45d0-4108-b1ec-fba860ad5808" from the tenant "64c82518-017d-4fb2-9fcf-3926da3616e6"
    When I add "Accept" header equal to "application/json"
    And I send a "GET" request to "/metadata"
    Then the response status code should be 200
    And the header "Content-Type" should be equal to "application/json; charset=utf-8"
    And the response should be in JSON
    And the JSON should be valid according to this schema:
    """
    {
      "type": "array",
      "minItems": 1,
      "maxItems": 1,
      "items": {
        "type": "object",
        "properties": {
          "uuid": {
            "type": "string",
            "enum": [
              "a235421c-0502-4ff3-b152-9d58ba279f92"
            ]
          }
        }
      }
    }
    """

  Scenario: Browse all metadata with permission scope `property data.attribute.subattribute = "string"`
    Given I am authenticated as the "system@system.ds" user with identity role "30328696-956f-4f5c-bc65-f0312a5c7d63" from the tenant "64c82518-017d-4fb2-9fcf-3926da3616e6"
    When I add "Accept" header equal to "application/json"
    And I send a "GET" request to "/metadata"
    Then the response status code should be 200
    And the header "Content-Type" should be equal to "application/json; charset=utf-8"
    And the response should be in JSON
    And the JSON should be valid according to this schema:
    """
    {
      "type": "array",
      "minItems": 1,
      "maxItems": 1,
      "items": {
        "type": "object",
        "properties": {
          "uuid": {
            "type": "string",
            "enum": [
              "82f3e242-6d6f-4b22-bdee-bc8dcb698514"
            ]
          }
        }
      }
    }
    """
