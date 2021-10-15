
#require 'capybara'
#require 'capybara/dsl'
#require 'capybara/rspec/matchers'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'

#World(Capybara::DSL)
#World(Capybara::RSpecMatchers)
World(PageObjects)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5
end
