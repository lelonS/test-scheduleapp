import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
const waitTime = Cypress.env('waitTimeMs');

Given('I am on the page {string}', (urlEnd) => {
  // Login
  cy.visit('/login.html');
  cy.get('input#email').type('exempel@school.net');
  cy.get('input#password').type('abc123');
  cy.get('input[type="submit"]').click();

  // Visit the homepage
  cy.visit(urlEnd);

  // Wait for the page to load
  cy.wait(waitTime);
});

When('I click on the link with aria-label {string}', (labelText) => {
  cy.get('a[aria-label="' + labelText + '"]').click({ force: true });
});

When('I fill in input id {string} with {string}', (id, text) => {
  cy.get('input#' + id)
    .clear()
    .type(text);
});

When('I click on the div with id {string}', (id) => {
  cy.get('div#' + id).click();
});

When('I click on the li with data-value {string}', (dataValueText) => {
  cy.get('li[data-value="' + dataValueText + '"]').click();
});

When('I click on the input id {string}', (id) => {
  cy.get('input#' + id).click();
});

When('I click on the button with aria-label {string}', (labelText) => {
  cy.get('button[aria-label="' + labelText + '"]').click();
});

When('I click on the span with data-field {string}', (fieldText) => {
  cy.get('span[data-field="' + fieldText + '"]').click();
});

Then('the first row of the tbody with class {string} contains {string}, {string} and {string}', (tbodyClass, a, b, c) => {
  cy.wait(waitTime * 2);
  cy.get('tbody.' + tbodyClass + ' tr').first().should('contain', a);
  cy.get('tbody.' + tbodyClass + ' tr').first().should('contain', b);
  cy.get('tbody.' + tbodyClass + ' tr').first().should('contain', c);
});

When('I click on the first edit button', () => {
  // Click on the first <a> with aria-label "Edit"
  cy.get('a[aria-label="Edit"]').first().click({ force: true });
});

Then('the first row of the tbody with class {string} does not contain {string}, {string} and {string}', (tbodyClass, a, b, c) => {
  cy.wait(waitTime * 2);
  cy.get('tbody.' + tbodyClass + ' tr').first().should('not.contain', a);
  cy.get('tbody.' + tbodyClass + ' tr').first().should('not.contain', b);
  cy.get('tbody.' + tbodyClass + ' tr').first().should('not.contain', c);
});