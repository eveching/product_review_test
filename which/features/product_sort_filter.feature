Feature: Filter product and sort product for review
  As a user
  I want to be able to filter the list of products for reviews and sort by price
  So that I can compare the products and make buying decision

  Background:
    Given I'm on the "televisions" landing page

  Scenario Outline: Sort by Price
    When I choose to sort the products by "<sort_by_order>"
    Then prices should be seen in "<prices_order>" order

    Examples:
    | sort_by_order | prices_order |
    | price_asc     | asc          |
    | price_desc    | desc         |

  Scenario Outline: Filter product review by brands
    When I filter the product list by <brand>
    Then I should see the results are filtered by <brand>

    Examples:
    | brand |
    | Samsung |
    | Sony    |
