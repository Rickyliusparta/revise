require 'spec_helper'

describe 'testing toolsqa practice form' do

	before(:all) do
		@web = Capybara::Session.new(:chrome)
		@web.visit("http://toolsqa.com/automation-practice-form/")
	end

	it 'should open webpage' do
		expect(@web.current_url).to eq "http://toolsqa.com/automation-practice-form/"
	end

	# it 'should input firstname' do
	# 	@web.find_field('firstname').has_field?
	# 	@web.fill_in('firstname', :with => 'Ricky')
	# 	expect(@web.find_field('firstname').value).to eq 'Ricky'
	# end

	# it 'should input lastname' do
	# 	@web.find_field('lastname').has_field?
	# 	@web.fill_in('lastname', :with => 'Liu')
	# 	expect(@web.find_field('lastname').value).to eq 'Liu'
	# end

	# it 'should select male' do
	# 	@web.find_by_id('sex-0').has_button?
	# 	@web.find_by_id('sex-0').click
	# 	@web.find_by_id('sex-0').has_checked_field?
	# 	@web.find_by_id('sex-1').has_unchecked_field?
		
		
	# end

	# it 'should select experinece years' do
	# 	@web.find_by_id('exp-2').has_button?
	# 	@web.find_by_id('exp-2').click 
	# 	@web.find_by_id('exp-2').has_checked_field?
	# end

	# it 'should select profile pictures' do
	# 	# @web.find_by_id('photo').click
	# 	@web.attach_file('photo', '/Users/Tech-A38/Desktop/KitKat.jpg')
	# 	# cannot make an assertion because theres is no object to test it on. 
	# end

	it 'should input date' do
		@web.find_field('datepicker').has_field?
		date = @web.find_by_id('datepicker')
		date.send_keys('14/07/2017')
		expect(date.value).to be_an_instance_of(String)
		
		

	end

	it 'should select automation tester' do
		@web.find_by_id('profession-1').has_field?
		@web.find_by_id('profession-1').click
		@web.find_by_id('profession-1').has_checked_field?
		@web.find_by_id('profession-0').has_unchecked_field?
	end

	it 'should select automation tool' do
		@web.find_field('tool-2').has_field?
		@web.find_by_id('tool-2').click
		@web.find_by_id('tool-2').has_checked_field?

	end

	it 'should be able to selcet a continent' do
		@web.find_by_id('continents').click
		continents = @web.find(:select, 'continents').first(:option, 'Asia').select_option
		expect(continents.value).to eq 'Asia'
	end


	it 'should select which selenium commands' do
		@web.find_by_id('selenium_commands').click
		selenium = @web.find(:select, 'selenium_commands').first(:option, 'Wait Commands').select_option
		expect(selenium.value).to eq 'Wait Commands'
	end

	it 'should click on button' do
		@web.find_by_id('submit').has_field?
		@web.find_by_id('submit').click
	end
end

	