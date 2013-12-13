@admin_features
Feature: Add campaign audit to admin panel

  Background:
    When I visit admin panel by campaign manager
    And I will go to campaign page

  Scenario: Add new platform to campaign with budget greater then 1000
    When  I add new campaign with greater budget than 1000
    And I go to audit page
    Then I must see new record in audit page
