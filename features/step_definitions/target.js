'use strict';

const { Then } = require('@cucumber/cucumber');

Then('And I store the value of {string} from the response body in the {string} variable', function (token, authToken) {
    console.log("hi");
  const response = this.apickli.getResponseObject();
  const value = response[token];
  this.scenarioVariables[authToken] = value;
});