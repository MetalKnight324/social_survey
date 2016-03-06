@wip
Feature: Create a survey
  As a user
  In order to share my questions with my friends
  I want to be able to create a survey record

  Scenario: A user creates a survey
    Given there is a user with email address "john@doe.com" and password "please01"
    And I am signed in as "john@doe.com/please01"
    And I am on the welcome page
    Then I should see "Surveys" within the menu

    When I click "Surveys" within the menu
    Then I should see "Surveys" within the page title

    When I click "Create"
    Then I should see "New survey" within the page title

    When I fill in "Question" with "Pugs or Nah?"
    And I click "Save"
    Then I should see "The survey was created successfully." within the notifications area
    And I should see the following survey table
      | Question       |
      | Pugs or Nah?   |

