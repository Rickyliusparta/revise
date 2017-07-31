Given(/^I am on sign in page$/) do

	@bbc.visit'https://account.bbc.com/signin'

end

When(/^I input username and password$/) do
	# @bbc.find_field('name', :with => 'username')
	@bbc.find_by_id('username-input').has_field?
	expect(@bbc.fill_in 'username-input', :with => 'rliu@spartaglobal.co')
	# @bbc.have_field('name', :with => 'password')
	@bbc.find_by_id('password-input').has_field?
	@bbc.fill_in('password-input', :with	=> 'SDET82017')

end

Then(/^i click sign in$/) do
	@bbc.find_by_id('submit-button').has_button?
	@bbc.find_by_id('submit-button').click

end

When(/^I enter wrong username$/) do
	puts @bbc.find_by_id('username-input').has_field?
	@bbc.fill_in('username-input', :with => 'rliu@spartaglobal.com')

end

And(/^I enter correct password$/) do
	@bbc.find_by_id('password-input').has_field?
	@bbc.fill_in('password-input', :with	=> 'SDET82017')
end

And(/^I click sign in$/) do

	@bbc.find_by_id('submit-button').click

end

Then(/^I see error message$/) do
@bbc.assert_text(:visible, 'Sorry, we can’t find an account with that email. You can register for a new account or get help')
end



