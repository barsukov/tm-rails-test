@admin_features
Feature: Add platforms to admin panel
  New Ability for admin to add campaigns

  Background:
    When I visit admin panel
    And I will go to create campaign


  Scenario: Add new platform
    When  I fill every fields correctly
    And  I press the button "Create"
    Then I must see new platform
