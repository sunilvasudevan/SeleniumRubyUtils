# Module designed for handling the common Selenium actions/ Modules.
#@author : Sunil
#
#Using TextWrangler for Mac

module SeleniumUtils

	#Required for any operation to perform.
	#should be called once to set the driver object
	def set_driver(driver)
		@selenium_driver ||= driver
	end
	
	#Method for Waiting for an element to disappear
	def wait_until_element_disappears(type, name, timeout: 5)
  		wait = Selenium::WebDriver::Wait.new(timeout: timeout)
  		wait.until { !@selenium_driver.find_element(type, name).visible? }
	end
	
	def is_element_present(type,element)
		if @selenium_driver.find_elements(type, element).size() > 0
			result = @selenium_driver.find_element(type,element).displayed? 
		end
		return result
	end

end

