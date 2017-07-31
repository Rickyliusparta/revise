require 'spec_helper'

describe 'testing website' do
	
	before(:all) do
		@session = Capybara::Session.new(:chrome)
		@session.visit('https://www.theguardian.com/uk')
	end

	it 'should load web page' do
		expect(@session.current_url).to eq 'https://www.theguardian.com/uk'
	end

	it 'should click sign in tab' do 
		sign_in = @session.find('span', text: 'sign in')		
		sign_in.click
	end

	it 'should enter email and password' do
		# @session.find_by_id("signin_field_email")
		@session.fill_in 'signin_field_email', with: 'testing@gmail.com'
		@session.fill_in 'password', with: 'balalai'
		sleep 2
	end

	it 'should click sign in button' do 
		submit = @session.find_by_id('signin_submit')
		submit.click
	end 

	it 'should prompt error message' do
		error = @session.find_by_id('signin-error-credentials')
		expect(error.assert_text('Incorrect email or password; please try again.')).to be true
	end
end
