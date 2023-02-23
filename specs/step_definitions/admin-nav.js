import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Cypress.on('uncaught:exception', (err, runnable) => {
  // returning false here prevents Cypress from failing the test if there is an uncaught exception
  return false
})

Given('I am on the homepage', () => {
  // Login
  cy.visit('/login.html');
  cy.get('input#email').type('exempel@school.net');
  cy.get('input#password').type('abc123');
  cy.get('input[type="submit"]').click();

  // Visit the homepage
  // cy.visit('/');
});

When('I click the button with the text {string}', (text) => {
  cy.get('button').contains(text).click();
});

Then('I get sent to the page {string}', (urlEnd) => {
  cy.url().should('include', urlEnd);
});

Given('I am on the url {string}', (urlEnd) => {
  // Login
  cy.visit('/login.html');
  cy.get('input#email').type('exempel@school.net');
  cy.get('input#password').type('abc123');
  cy.get('input[type="submit"]').click();

  // Visit the homepage
  cy.visit(urlEnd);

  // Wait for the page to load
  cy.wait(1000);

});

When('I click the link with the text {string}', (text) => {
  cy.get('a').contains(text).click();
});

// Then('I get sent to the page {string}', (url) => {
//   // TODO: implement step
// });