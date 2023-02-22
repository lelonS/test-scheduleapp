Feature: Login and logout

    Scenario: Correct login information
        Given I am on the login page
        When I enter "exempel@school.net" as the email
        And I enter "abc123" as the password
        And I click the submit button
        Then I get sent to the homepage

    Scenario: Incorrect login information
        Given I am on the login page
        When I enter "wrong@mail.com" as the email
        And I enter "wrongpassword" as the password
        And I click the submit button
        Then I stay on the page "/login.html"

    Scenario: Enter an invalid email
        Given I am on the login page
        When I enter "wrongmail.com" as the email
        And I enter "abc123" as the password
        And I click the submit button
        Then the email input is invalid

    Scenario: Logout from the homepage
        Given I am on the homepage
        When I click the button with the text "Logout"
        Then I get sent to the page "/login.html"