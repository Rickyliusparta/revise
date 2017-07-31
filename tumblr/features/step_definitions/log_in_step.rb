Given(/^I am on the web page$/) do
	@tum.visit 'https://www.tumblr.com/'
	expect(@tum.current_url).to eq'https://www.tumblr.com/'

end

And(/^I click log in$/) do
	@tum.find_by_id('signup_login_button').has_field?
	@tum.find_by_id('signup_login_button').click
end

When(/^I am can confirm I am on login page$/) do
	expect(@tum.current_url).to eq 'https://www.tumblr.com/login'

end

And(/^I enter my details and follow the instructions$/) do
	@tum.find_by_id('signup_determine_email').has_field?
	@tum.fill_in('signup_determine_email', :with => 'rliu@spartaglobal.co')
	@tum.find_by_id('signup_forms_submit').click
	@tum.find_by_id('signup_password').has_field?
	@tum.fill_in('signup_password', :with => 'SDET82017')
	@tum.find_by_id('signup_forms_submit').click

end

Then(/^I should be logged in$/) do

	expect(@tum.current_url).to eq 'https://www.tumblr.com/dashboard'
	# @tum.find(:xpath, '//*[@id="account_button"]').has_xpath?
		# puts @tum.has_xpath?(:xpath,'//*[@id="account_button"]')

	
end