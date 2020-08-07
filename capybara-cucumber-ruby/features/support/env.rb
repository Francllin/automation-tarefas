require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'faker'
require 'selenium-webdriver'
require 'site_prism'
require 'yaml'
require 'rubocop'

ENVIRONMENT_TYPE ||= ENV['ENVIRONMENT_TYPE']
HEADLESS = ENV['HEADLESS'] ? true : false

URL = YAML.load_file(File.expand_path('../../config/environment.yml', __dir__))['environment']['url']
Dir["#{File.expand_path('', __dir__)}/page_helper/*page_helper.rb"].map { |file| require_relative file }

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new

  if HEADLESS
    options.add_argument('--headless')
    options.add_argument('disable-gpu')
  end

  options.add_argument('--no-sandbox')
  options.add_argument('ignore-certificate-errors')
  options.add_argument('disable-popup-blocking')
  options.add_argument('disable-translate')
  options.add_argument('disable-infobars')
  options.add_argument('--enable-features=NetworkService,NetworkServiceInProcess')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--log-level=2')
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.read_timeout = 90
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options, http_client: client)
end

Capybara.configure do |config|
  config.default_driver = :chrome
  Capybara.default_max_wait_time = 10
  Capybara.javascript_driver = :headless_chrome if HEADLESS
end

World(PageObjects)
