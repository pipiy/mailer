Feature: Contact us
	In order to contact with the owner of the website
	As an guest
	I want to be able to send a message to the owner

	Background:
		Given I am on the home page

	Scenario: Send a message
		When I press the contact us button
			Then I should see the new contact us page

		When I fill in name
		And I fill in email
		And I fill in description
		And I press the send button
			Then I should see that the message was successfully sent

  Scenario: Failure on the required fields of the contact us form
    Given I am on the contact us page

    When I forgot to fill one of the required fields
    And I press the send button
      Then I should see the error message

