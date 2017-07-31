Given(/^I have open the webpage$/) do

	@bbc.visit 'http://www.bbc.co.uk/'

end


When(/^the web page opens onto the correct webpage$/) do
	
	expect(@bbc.current_url).to eq 'http://www.bbc.co.uk/'
end


Then(/^I can confirm it has opened$/) do
	@bbc.assert_text(:all, "to your BBC account") 
end

# Given(/^There is a sign in button$/) do
# 	@bbc.visit 'http://www.bbc.co.uk/'
# 	@bbc.find_by_id('idcta-username')
# end

# And(/^I click on it I should be on sign in page$/) do
# 	@bbc.find_by_id('idcta-link').click
# 	expect(@bbc.current_url).to eq 'https://account.bbc.com/signin'
# end

# When(/^I fill in the correct username and password$/) do
# 	signin = @bbc.vist'https://account.bbc.com/signin'
# 	username = @signin.find_by_id('username-input')
# 	username.fill_in('username-input', :with => 'rliu@spartaglobal.co')
# 	password = @signin.find_by_id('password-input')
# 	password.fill_in('password-input', :with => 'SDET82017')
# end

# Then(/^click sign in$/) do
# 	# submit = @bbc.find_by_id('submit-button')
# 	# submit.click
# end

