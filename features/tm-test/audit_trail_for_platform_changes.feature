Feature: Add campaign audit to admin panel

  Background:
    When I visit admin panel by campaign manager


  Scenario: Add new platform to campaign with budget greater then 1000
    When  I have added new campaign with greater budget than 1000
    And I go to audit dashboard page
    Then I must see new record in audit page

  Scenario: Add new platform to campaign with budget less then 1000
    When I have added new campaign with less budget than 1000
    And I go to audit dashboard page
    Then I must not see new record in audit page
