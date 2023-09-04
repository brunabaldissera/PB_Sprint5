require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--incognito')
    options.add_argument('--start-maximized')
    options.add_argument('--window-size-1420-835')
  
    if ENV['HEADLESS']
        options.add_argument('--headless')
    end

    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.default_driver = :my_chrome
Capybara.app_host = URL