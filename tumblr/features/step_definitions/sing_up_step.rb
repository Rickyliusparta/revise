Given(/^I am on tumblr web page$/) do
	@tum.visit 'https://www.tumblr.com/'
	expect(@tum.current_url).to eq'https://www.tumblr.com/'
end

When(/^I click started$/) do
	@tum.assert_text(:visible, 'Get Started')
	@tum.find_by_id('signup_forms_submit').click
end

Then(/^I can fill in the form to register$/) do
	@tum.find_by_id('signup_email').has_field?
	@tum.fill_in('signup_email', :with => 'rliu@spartaglobal.co')
	@tum.find_by_id('signup_password').has_field?
	@password = @tum.find_by_id('signup_password')
	@password.send_keys('SDET82017')
	@tum.find_by_id('signup_username').has_field?
	@tum.fill_in('signup_username', :with => 'spartaglobalyeheyh')
	@tum.find_by_id('signup_forms_submit').click
	@age = @tum.find_by_id('signup_age')
	@age.send_keys('28')
	@tum.has_checked_field?('checkbox')
	@tum.find_by_id('signup_tos').click
	

end

And(/^I click sign up$/) do
  pending # Write code here that turns the phrase above into concrete actions
end