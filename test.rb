require 'watir-webdriver'

browser = Watir::Browser.new
browser.goto 'http://bit.ly/watir-example'
p browser.text
