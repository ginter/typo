Feature: Merge Articles
  As a blog administrator
  In order to unclutter the site
  I want to be able to merge similar articles on my blog

  Background:
    Given the blog is set up
    And there is an article with title "Snickers rock"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given I am logged into the admin panel
    And I am on the "Snickers rock" article page
    When I fill in "merge_with" with "3"
    And I press "Merge"
    Then there should be a merged article with body "Hello World! Snickers rock"

  Scenario: A non-admin cannot merge two articles
    Given I am logged into the publisher panel
    And I am on the "Snickers rock" article page
    Then I should not see "Merge Articles"
