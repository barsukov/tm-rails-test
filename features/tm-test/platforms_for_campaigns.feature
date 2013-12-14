@admin_features
@platform
Feature: Add platforms to admin panel
  New Ability for admin to add campaigns

  Background:
    When I visit admin panel


  Scenario: Add new platform
    When I will go to create platform
    And  I fill every platforms fields correctly
    And  I press the button "Create"
    Then I must see new platform

  Scenario: Add platform for campaign
    When I will go to create campaign
    And  I fill every campaign fields correctly
    And  I check the platform
    And  I press the button "Create"
    Then I must see new campaign

