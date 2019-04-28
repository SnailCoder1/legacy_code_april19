Feature: User can log in
  As a User 
  In order to use the application
  I would like to be able to log in to my account 

Background: 
Given the following user exists
  |name |email          | password|
  |boa  |craft@cool.se  |pwd008009|

Scenario: Log in successfully 

When I visit the landing page
And I click "Login" link
And I fill in the "user_email" with "craft@cool.se"
And I fill in the "user_password" with "pwd008009"
And I click "Log in" button 
Then I should see "Signed in successfully."

Scenario: User gives wrong password

When I visit the landing page
And I click "Login" link
And I fill in the "user_email" with "craft@cool.se"
And I fill in the "user_password" with "pwd_wrong"
And I click "Log in" button
Then I should see "Invalid Email or password."

Scenario: User gives wrong email

When I visit the landing page
And I click "Login" link
And I fill in the "user_email" with "wrong@cool.se"
And I fill in the "user_password" with "pwd008009"
And I click "Log in" button
Then I should see "Invalid Email or password."







