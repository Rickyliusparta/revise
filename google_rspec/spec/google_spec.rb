require 'spec_helper'

describe 'testing google homepage' do
	
	before(:all) do
	@session = Capybara::Session.new(:chrome)
	@session.visit('https://www.google.co.uk')
	end 

	it 'should load google homepage' do
		expect(@session.current_url).to eq 'https://www.google.co.uk/'
	end

	it 'should click on multi tab' do
		tab = @session.find_by_id('gbwa')
		tab.click
		sleep 2
	end 

	it 'should click on youtueb' do
		youtube = @session.find('span', text: 'Youtube')
		youtube.click
	end
end

