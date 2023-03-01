import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
const waitTime = Cypress.env('waitTimeMs');

Then('the first row of the tbody with class {string} contains {string} and {string}', (tbodyClass, a, b) => {
  cy.get('tbody.' + tbodyClass + ' tr').first().should('contain', a);
  cy.get('tbody.' + tbodyClass + ' tr').first().should('contain', b);
});

Then('the first row of the tbody with class {string} does not contain {string} and {string}', (tbodyClass, a, b) => {
  // cy.wait(waitTime);
  cy.get('tbody.' + tbodyClass + ' tr').first().should('not.contain', a);
  cy.get('tbody.' + tbodyClass + ' tr').first().should('not.contain', b);
});