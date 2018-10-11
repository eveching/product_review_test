Feature: Add and remove products to compare
  As a user
  I want to be able to add/remove products to the product comparison list
  So that I can compare the products and make buying decision

  Background:
    Given I'm on the "televisions" landing page
    When I add the first 4 products to compare

  Scenario: Add to compare
    Then I can see the products added into the product comparison list at the bottom of the page

  Scenario: Maximum 4 products to be added to product comparison list
    When I add another product to compare
    Then I can see the error message "You already have 4 products for comparison" displayed

  Scenario: Remove from compare
    When I remove first product from the product comparison list
    Then I can see the first product is removed
    And I can see the first product has the "Add to compare" button

