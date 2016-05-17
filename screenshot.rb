require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.navigate.to ARGV[0]
begin
  driver.save_screenshot('screenshot.png')
rescue Selenium::WebDriver::Error::UnknownError => e
  puts "Uh oh. Selenium said: '#{e}'. Trying to take screenshots with screencapture. This will work only on Mac."
  `screencapture screenshot.png`
ensure
  driver.quit
end
