require 'capybara'
require 'site_prism'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require "allure-cucumber"


Capybara.configure do |config|
  config.default_driver = :site_prism
end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #roda no navegador
end

AllureCucumber.configure do |config|
  config.clean_results_directory = true
  config.logging_level = Logger::INFO
end