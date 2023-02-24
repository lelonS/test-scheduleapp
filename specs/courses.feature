Feature: Manage courses

    Scenario: Click on Create button
        Given I am on the page "/admin/#/courses"
        When I click on the link with aria-label "Create"
        Then I get sent to the page "/admin/#/courses/create"

    Scenario: Create a new course
        Given I am on the page "/admin/#/courses/create"
        When I fill in input id "name" with "Testa"
        And I fill in input id "shortName" with "Te"
        And I click on the div with id "class"
        And I click on the li with data-value "61"
        And I fill in input id "points" with "50"
        And I fill in input id "startDate" with "2020-01-01"
        And I fill in input id "endDate" with "2020-02-01"
        And I fill in input id "hoursPerDay" with "4"
        And I fill in input id "plan" with "x"
        And I click on the div with id "invoiceItem"
        And I click on the li with data-value "1"
        And I click on the button with aria-label "Save"
        Then I get sent to the page "/admin/#/courses"
        When I click on the span with data-field "id"
        Then the first row of the tbody with class "datagrid-body" contains "Testa" and "Te"

    Scenario: Edit a course
        Given I am on the page "/admin/#/courses/"
        When I click on the span with data-field "id"
        Then the first row of the tbody with class "datagrid-body" contains "Testa" and "Te"
        When I click on the first edit button
        And I fill in input id "name" with "Testa2"
        And I fill in input id "shortName" with "Te2"
        And I click on the button with aria-label "Save"
        Then I get sent to the page "/admin/#/courses"
        When I click on the button with aria-label "Refresh"
        Then the first row of the tbody with class "datagrid-body" contains "Testa2" and "Te2"

    Scenario: Remove a course
        Given I am on the page "/admin/#/courses/"
        When I click on the span with data-field "id"
        Then the first row of the tbody with class "datagrid-body" contains "Testa2" and "Te2"
        When I click on the first edit button
        And I click on the button with aria-label "Delete"
        Then I get sent to the page "/admin/#/courses"
        When I click on the button with aria-label "Refresh"
        Then the first row of the tbody with class "datagrid-body" does not contain "Testa2" and "Te2"