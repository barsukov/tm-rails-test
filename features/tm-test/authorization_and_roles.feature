Feature: Add roles to manage platforms in admin panel
         This is a simple gherekin example
  Scenario: Restrict to manage paltform fo campaign manager
    When I visit admin panel by campaign manager
    And I visit platform page
    Then I can not be able to add the

  Scenario: Admin manage everything
    When I visit admin panel by admin
    And I visit platform page
    Then I can not be able to add the
