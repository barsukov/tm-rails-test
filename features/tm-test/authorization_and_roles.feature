Feature: Add roles to manage platforms in admin panel
         This is a simple gherekin example

  Scenario: Restrict to manage paltform fo campaign manager
    When I visit admin panel by campaign manager
    And I visit platform page
    Then I can not be able to add the new platform

  @admin_features
  Scenario: Admin manage everything
    When I visit platform page
    Then I can be able to add the new platform
