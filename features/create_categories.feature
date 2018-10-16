Feature: Create Categories
  As a blog user
  I want to create categories for my blogs
  so I can add blogs to them
  
Background:
   Given the blog is set up
   And I am logged into the admin panel

Scenario: New Categories page shown
    Given I am on the admin page
    When I follow "Categories"
    Then I should see "Categories"
    
Scenario:
  Given I am on the new categories page
  When I fill in "Name" with "Test"
  And I fill in "Keywords" with "Test Keywords"
  And I fill in "Description" with "Just a test"
  And I press "Save"
  Then I should see "Category was successfully saved"