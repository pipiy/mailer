Given /^I am on the home page$/ do
  visit('/')
end

When /^I press the contact us button$/ do
  click_on('Contact Us')
end

Then /^I should see the new contact us page$/ do
  page.should have_content('Contact Us Page')
end

When /^I fill in name$/ do
  fill_in('contact[name]', :with => 'Jack')
end

When /^I fill in email$/ do
  fill_in('contact[email]', :with => 'example@gmail.com')
end

When /^I fill in description$/ do
  fill_in('contact[description]', :with => 'Test description for sent messages')
end

When /^I press the send button$/ do
  click_on('Send')
end

Then /^I should see that the message was successfully sent$/ do
  page.should have_content("Message was successfully sent.")
end

Given /^I am on the contact us page$/ do
  click_on('Contact Us')
end

When /^I forgot to fill one of the required fields$/ do
  fill_in('contact[name]', :with => '')
end

Then /^I should see the error message$/ do
  page.should have_content('List of Errors:')
end
