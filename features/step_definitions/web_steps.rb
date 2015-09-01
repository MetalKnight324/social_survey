Given /^I am on the (.+) page$/ do |identifier|
  url = path_for(identifier)
  visit url
end

Then /^I should see "([^"]+)"$/ do |content|
  expect(page).to have_content(content)
end

When /^(.+) within (.+)$/ do |target_step, location|
  locator = locator_for(location)
  scope = find(locator)
  within(scope) {step(target_step)}
end

When /^I fill in "([^"]+)" with "([^"]+)"$/ do |locator, value|
  fill_in locator, with: value
end

When /^I click "([^"]+)"$/ do |locator|

  elem = first('a', text: locator) ||
    first(:xpath, "//input[@type='submit' and @value='#{locator}']")
  expect(elem).not_to be_nil
  elem.click
end
