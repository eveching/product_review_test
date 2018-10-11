require 'rspec'
require 'page-object'
require_relative '../../helpers/env_support.rb'

World(PageObject::PageFactory)

require 'capybara/cucumber'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium

Capybara.configure do |config|
  config.default_selector = :css
  config.default_max_wait_time = 60
  config.run_server = false
  config.ignore_hidden_elements = false
end

$browser = Capybara.current_session.driver.browser
@wait = Selenium::WebDriver::Wait.new(:timeout => 25) # seconds


