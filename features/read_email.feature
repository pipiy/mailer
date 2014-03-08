Feature: Read a contact us email
  In order to receive messages from visitors to the page
  As an admin
  I want to read an email

  Scenario: Read an email
    When users sent a message from the contact us page
      Then the message should include the user details and a message