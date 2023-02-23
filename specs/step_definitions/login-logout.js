import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given('I am on the login page', () => {
  cy.visit('/login.html');
});

When('I enter {string} as the email', (a) => {
  cy.get('input#email').type(a);
});

When('I enter {string} as the password', (a) => {
  cy.get('input#password').type(a);
});

When('I click the submit button', () => {
  cy.get('input[type="submit"]').click();
});

Then('I get sent to the homepage', () => {
  cy.url().should('include', '/');
});

Then('I stay on the page {string}', (urlEnd) => {
  cy.url().should('include', urlEnd);
});


Then('the email input is invalid', () => {
  cy.get('input#email:invalid').should('exist');
});
