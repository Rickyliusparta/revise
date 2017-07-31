Given(/^I am on my account page$/) do
	expect(@tum.current_url).to eq 'https://www.tumblr.com/dashboard'

end

And(/^I can click on search bar$/) do
	@tum.find_by_id('search_query').has_field?
	@tum.find_by_id('search_query').click
	@tum.fill_in('search_query', :with => 'ps4')
	sleep 2
end

When(/^I scroll to ps(\d+)$/) do |digit|
	# ps = @tum.find('span', text: 'ps4')
	# @tum.first('span > p ').click
	# @tum.assert_selector('span', :text => 'ps4').click
	@tum.find(:xpath '//*[@id="result_link_ps4"]/span/div[1]/span')

end

Then(/^I should be on ps(\d+) page$/) do |digit|
	expect(@tum.current_url).to eq 'https://www.tumblr.com/search/ps4'
end

Given(/^I am on the current page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on the playstaion$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be on playstation page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end