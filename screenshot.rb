require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.navigate.to ARGV[0]
driver.save_screenshot('screenshot.png')
driver.quit
