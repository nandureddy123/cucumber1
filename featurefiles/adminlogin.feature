@tag
Feature: Admin login
  I want to use this template for my feature file

  @tag1
  Scenario: check admin login with valid inputs
    Given i open browser with url "http://orangehrm.qedgetech.com"
    Then i should see login page
    When i enter username "Admin"
    And i enter password "Qedge123!@#"
    And i click login
    Then i should see admin module
    When i click logout
    Then i should see login page
    When i close browser
  @tag2 
  Scenario Outline: check admin login with invalid inputs
     Given i open browser with url "http://orangehrm.qedgetech.com"
     Then i should see login page
     When i enter username "abc"
     And i enter password "xyz"
     And i click login
     Then i should see error message
     When i close browser
     
  Examples:
  |username|password|
  |Admin|xyz|
  |xyz|Qedge123!@#|
  |abc|xyz|
    
