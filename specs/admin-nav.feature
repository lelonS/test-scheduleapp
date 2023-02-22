Feature: Admin menu navigation

    Scenario: Go to admin page
        Given I am on the homepage
        When I click the button with the text "Admin"
        Then I get sent to the page "/admin"


    Scenario Outline: Go to menu choices
        Given I am on the url "/admin"
        When I click the link with the text "<menuItem>"
        Then I get sent to the page "<url>"

        Examples:
            | menuItem | url               |
            | Teachers | /admin/#/teachers |
            | Classes  | /admin/#/classes  |
            | Courses  | /admin/#/courses  |
            | Schools  | /admin/#/schools  |
