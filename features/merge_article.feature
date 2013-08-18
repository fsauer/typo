Feature: Write Articles
  As a blog administrator
  In order to merge articles with similar content
  I want to be able to merge articles in my blog

  Background:
    Given the blog is set up

  Scenario: Successfully write articles
    Given I am logged into the admin panel
    And I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    Then I follow "Edit"
    Then I should see "Merge Articles"

  Scenario: Successfully write articles
    Given I am logged into the non-admin panel
    And I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    Then I follow "Edit"
    Then show me the page
    Then I should not see "Merge Articles"
