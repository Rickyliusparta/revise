require 'spec_helper'

describe 'we are going to access bbc website' do

	before(:all) do
		@session = Capybara::Session.new(:chrome)

	end

	it 'should open bbc website' do
		@session.visit('http://www.bbc.co.uk')
		expect(@session.current_url).to eq 'http://www.bbc.co.uk/'
	end	

	it 'should find login link' do
		sign_in = @session.find_by_id('idcta-link')
		sign_in.has_link?
		sleep 2
		sign_in.click

	end

	it 'should input username' do
		@username = @session.find_by_id('username-input')
		# username.send_keys ("rliu@spartaglobal.co")
		@username.send_keys('jager@bomb.com')
		
	end

	it 'should input password' do
		password = @session.find_by_id('password-input')
		password.send_keys ('SDET82017')
	end

	it 'should click submit' do
		submit = @session.find_by_id('submit-button')
		submit.click
	end

	it 'should prompt error message' do
	error = @session.find_by_id('form-error-username')
	# expect(error.assert_text).to be true
	puts error.assert_text
	end
end