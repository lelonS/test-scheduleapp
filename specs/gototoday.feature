Feature: Go to today's date

    Description: When you click on the button "Gå till idag" then the calendar should go to today's date.

    Scenario: Go to today's date

        Given I am logged in as an admin
        And I am on the homepage
        When I scroll to the bottom of the page
        And I click on the button "Gå till idag"
        Then the calendar should go back to today's date
