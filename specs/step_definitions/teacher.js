import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

When('I click on the div with data-testid {string}', (testId) => {
  cy.get(`div[data-testid="${testId}"]`).click();
});

When('I click on the backdrop div with id {string}', (id) => {
  cy.get(`div[id="${id}"]`).click();
});