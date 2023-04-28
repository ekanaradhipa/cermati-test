@Register
Feature: Register

@Login
Scenario: Register
Given I open cermati
And I fill valid email
And I fill valid phone number
And I fill valid password
And I fill valid password repeat
And I fill valid first name
And I fill valid last name
And I fill city
And I register
