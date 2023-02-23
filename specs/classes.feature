Feature: Manage classes

    Scenario: Click on Create button
        Given I am on the page "/admin/#/classes"
        When I click on the link with aria-label "Create"
        Then I get sent to the page "/admin/#/classes/create"

    Scenario: Create a new class
        Given I am on the page "/admin/#/classes/create"
        When I fill in input id "name" with "Test Class"
        And I fill in input id "shortName" with "TCL"
        And I fill in input id "blog" with "https://www.test.com"
        And I fill in input id "defaultStartTime" with "08:00"
        And I fill in input id "defaultEndTime" with "16:00"
        And I fill in input id "defaultHoursPerDay" with "8"
        And I click on the div with id "defaultInvoiceItem"
        And I click on the li with data-value "1"
        And I click on the div with id "school"
        And I click on the li with data-value "1"
        And I click on the input id "hide"
        And I click on the button with aria-label "Save"
        Then I get sent to the page "/admin/#/classes"
        When I click on the span with data-field "id"
        Then the first row of the tbody with class "datagrid-body" contains "Test Class", "TCL" and "https://www.test.com"

    Scenario: Edit a class
        Given I am on the page "/admin/#/classes/"
        When I click on the span with data-field "id"
        And I click on the first edit button
        And I fill in input id "name" with "Test Class2"
        And I fill in input id "shortName" with "TCL2"
        And I fill in input id "blog" with "https://www.test2.com"
        And I click on the button with aria-label "Save"
        Then I get sent to the page "/admin/#/classes"
        When I click on the button with aria-label "Refresh"
        Then the first row of the tbody with class "datagrid-body" contains "Test Class2", "TCL2" and "https://www.test2.com"

    Scenario: Remove a class
        Given I am on the page "/admin/#/classes/"
        When I click on the span with data-field "id"
        And I click on the first edit button
        And I click on the button with aria-label "Delete"
        Then I get sent to the page "/admin/#/classes"
        When I click on the button with aria-label "Refresh"
        Then the first row of the tbody with class "datagrid-body" does not contain "Test Class2", "TCL2" and "https://www.test2.com"
