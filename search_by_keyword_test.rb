require 'watir-webdriver'

def search_by_keyword_test(browser, url)
	# Navigate to the testing site
	browser.goto url
	# Enter search keyword in the search input box and hit enter
	browser.text_field(:css, '[name="form"] input').when_present.set 'Transformers'
	browser.send_keys :enter
	# Click on the 1st search result link
	browser.link(:css, 'div.animates.wipe-max-height.ng-scope a').when_present.click

	test_name = 'Search Movie By Keyword Test'
	assert(browser, test_name)
	browser.close
end

def assert(browser, test_name)
	test_result = 'Failed'
	# Verify h4 tag in the search result text contains the movie title
	if browser.h4.when_present.text.include? "Transformers: The Last Knight\n2017"
		test_result = 'Passed'
	end
	puts test_name + ' - ' + test_result
end

## Main ##
browser = Watir::Browser.new
url = 'https://clutter-automation-interview.herokuapp.com/'
search_by_keyword_test(browser, url)