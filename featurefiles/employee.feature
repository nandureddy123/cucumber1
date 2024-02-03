@tag
Feature: Employee registration
  I want to use this template to check new employee registration

  @tag1
  Scenario: check new employee registration with valid inputs
    Given i open browser with url "http://orangehrm.qedgetech.com"
    Then i should see login page
    When i enter username "Admin"
    And i enter password "Qedge123!@#"
    And i click login
    Then i should see admin module
    When i goto new employee registration page
    And i enter first name as "arnold"
    And i enter last name as "s"
    And click save
    Then i should see registered employee in employee list
    When i click logout
    Then i should see login page
    When i close browser
    