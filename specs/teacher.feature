Feature: Manage teachers

    Scenario: Click on Create button
        Given I am on the page "/admin/#/teachers"
        When I click on the link with aria-label "Create"
        Then I get sent to the page "/admin/#/teachers/create"

    Scenario: Create a new teacher
        Given I am on the page "/admin/#/teachers/create"
        When I fill in input id "email" with "test@testmail.test"
        And I fill in input id "password" with "testpassword"
        And I fill in input id "firstname" with "Test"
        And I fill in input id "lastname" with "Testsson"
        And I fill in input id "initials" with "TT"
        And I fill in input id "phone" with "0701234567"
        And I click on the div with data-testid "selectArray"
        And I click on the li with data-value "admin"
        And I click on the li with data-value "user"
        And I click on the backdrop div with id "menu-roles"
        And I click on the input id "hide"
        And I click on the button with aria-label "Save"
        Then I get sent to the page "/admin/#/teachers"
        When I click on the span with data-field "id"
        Then the first row of the tbody with class "datagrid-body" contains "Test", "Testsson" and "TT"

    Scenario: Edit a teacher
        Given I am on the page "/admin/#/teachers/"
        When I click on the span with data-field "id"
        Then the first row of the tbody with class "datagrid-body" contains "Test", "Testsson" and "TT"
        When I click on the first edit button
        And I fill in input id "firstname" with "Test2"
        And I fill in input id "lastname" with "Testsson2"
        And I fill in input id "initials" with "TT2"
        And I click on the button with aria-label "Save"
        Then I get sent to the page "/admin/#/teachers"
        When I click on the button with aria-label "Refresh"
        Then the first row of the tbody with class "datagrid-body" contains "Test2", "Testsson2" and "TT2"

    Scenario: Remove a teacher
        Given I am on the page "/admin/#/teachers/"
        When I click on the span with data-field "id"
        Then the first row of the tbody with class "datagrid-body" contains "Test2", "Testsson2" and "TT2"
        When I click on the first edit button
        And I click on the button with aria-label "Delete"
        Then I get sent to the page "/admin/#/teachers"
        When I click on the button with aria-label "Refresh"
        Then the first row of the tbody with class "datagrid-body" does not contain "Test2", "Testsson2" and "TT2"