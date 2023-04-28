require 'selenium-webdriver'
require 'rubygems'
require 'rspec'
#require 'v8'

driver = Selenium::WebDriver.for:firefox
#object_v8 = V8::Context.new

Given("I open cermati") do

 driver.navigate.to "https://www.cermati.com/app/gabung"
 sleep(5) #wait for page to load
 p "wake up"
 
end

Given('I fill valid email') do
	#driver.find_element(:xpath, "//*[@class='Header_header__logo__JzRDc']").click
	driver.find_element(:xpath, "//input[@id='email']").click
	driver.find_element(:xpath, "//input[@id='email']").send_key("testerCermati@gmail.com")
end

Given('I fill valid phone number') do
 	driver.find_element(:xpath, "//input[@id='mobilePhone']").click
	driver.find_element(:xpath, "//input[@id='mobilePhone']").send_key("08123456789")
end

Given('I fill valid password') do
 	driver.find_element(:xpath, "//input[@id='password']").click
	driver.find_element(:xpath, "//input[@id='password']").send_key("Password123")
end

Given('I fill valid password repeat') do
	driver.find_element(:xpath, "//input[@id='confirmPassword']").click
	driver.find_element(:xpath, "//input[@id='confirmPassword']").send_key("Password123")
end

Given('I fill valid first name') do
    driver.find_element(:xpath, "//input[@id='firstName']").click
	driver.find_element(:xpath, "//input[@id='firstName']").send_key("Tester")
end

Given('I fill valid last name') do
   driver.find_element(:xpath, "//input[@id='lastName']").click
	driver.find_element(:xpath, "//input[@id='lastName']").send_key("Fromcermati")
end

Given('I fill city') do
  driver.find_element(:xpath, "//input[@id='cityAndProvince']").click
	driver.find_element(:xpath, "//input[@id='cityAndProvince']").send_key("KOTA JAKARTA UTARA")
end

Given('I register') do
   sleep(1) #wait for button to activate

  driver.find_element(:xpath, "//button[@data-button-name='register-new']").click
	
end
