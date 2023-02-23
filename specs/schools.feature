Feature: Manage schools

    Scenario: Click on the Create button
        Given I am on the page "/admin/#/schools"
        When I click on the link with aria-label "Create"
        Then I get sent to the page "/admin/#/schools/create"

    Scenario: Create a new school
        Given I am on the page "/admin/#/schools/create"
        When I fill in input id "name" with "Testskola"
        And I fill in input id "shortName" with "Ts"
        And I click on the button with aria-label "Save"
        Then I get sent to the page "/admin/#/schools"
        When I click on the span with data-field "id"
        Then the first row of the tbody with class "datagrid-body" contains "Testskola" and "Ts"

    Scenario: Edit a school
        Given I am on the page "/admin/#/schools"
        When I click on the span with data-field "id"
        And I click on the first edit button
        And I fill in input id "name" with "Testskola2"
        And I fill in input id "shortName" with "Ts2"
        And I click on the button with aria-label "Save"
        Then I get sent to the page "/admin/#/schools"
        When I click on the button with aria-label "Refresh"
        Then the first row of the tbody with class "datagrid-body" contains "Testskola2" and "Ts2"

    Scenario: Remove a school
        Given I am on the page "/admin/#/schools"
        When I click on the span with data-field "id"
        And I click on the first edit button
        And I click on the button with aria-label "Delete"
        Then I get sent to the page "/admin/#/schools"
        When I click on the button with aria-label "Refresh"
        Then the first row of the tbody with class "datagrid-body" does not contain "Testskola2" and "Ts2"