# product_review_acceptance_test

Functional acceptance tests for Which? Television review landing page.
============================================================

Here's a simple Cucumber BDD test suite written in Ruby based on Selenium Webdriver, PageObjects, RSpec and Capybara to automate some basic functionality on Which? Television review landing page.
The 3 functional tests with working step definitions are written in features/product_landing_page.feature
The other 2 functional tests scenarios without working step definitions are written in features/product_sort_filter.feature

Setup
1. Clone the repo
2. Install dependencies by running $ bundle install

Running your tests
To run the cucumber test, run 
$ bundle exec rake cucumber

Report
The cucumber report is generated after the tests are finished running. Please refer to report.html for test results.
