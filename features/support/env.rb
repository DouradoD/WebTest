require 'capybara'
require 'site_prism'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require "allure-cucumber"

# Capybara.register_driver :site_prism do |app|
#   browser = ENV.fetch('browser', 'selenium_chrome').to_sym
#   Capybara::Selenium::Driver.new(app, browser: browser, desired_capabilities: capabilities)
# end

# # Then tell Capybara to use the Driver you've just defined as its default driver
# Capybara.configure do |config|
#   config.default_driver = :site_prism
# end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #roda no navegador
    config.default_max_wait_time = 10
end

AllureCucumber.configure do |config|
  config.clean_results_directory = true
  config.logging_level = Logger::INFO
end
