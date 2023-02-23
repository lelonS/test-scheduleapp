Feature: Go to todays date

    Description: When you click on the button "Gå till idag" then the calendar should go to today's date.

    Scenario: Go to todays date

        Given I am on the homepage
        When I scroll to the bottom of the page
        And I click on the button with id "goToToday"
        Then the calendar goes back to todays date
