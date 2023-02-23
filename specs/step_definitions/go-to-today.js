import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

When('I scroll to the bottom of the page', () => {
  cy.scrollTo('bottom');
});

When('I click on the button with id {string}', (a) => {
  cy.get(`button#${a}`).click();
});

Then('the calendar goes back to todays date', () => {
  cy.get('tr.today')
    .should('be.visible');
});