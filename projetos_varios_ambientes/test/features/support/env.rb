require 'capybara'
require 'faker'
require 'ostruct'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'

BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE'] #homolog

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml") # homolog.yml

World(PageObjects)


Capybara.register_driver :selenium do |app|

if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
elsif BROWSER.eql?('ie')
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(app, :browser => :safari)
elsif BROWSER.eql?('poltergeist')
    obtions = { js_errors: false}
    Capybara::Poltergeist::Driver.new(app, obtions)
    end

end


Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = CONFIG['https://automacaocombatista.herokuapp.com']
    config.default_max_wait_time = 5
end
