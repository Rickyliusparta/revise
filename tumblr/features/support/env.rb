require 'capybara'
require 'rspec'
require 'cucumber'
require_relative '../../helpers/before_hook.rb'
require_relative '../../helpers/log_in_helpers.rb'

# include LoginHelper

Capybara.register_driver :chrome do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end


Capybara.configure do |config|
	config.app_host  = 'https://www.tumblr.com/'
end

Before do
	@tum = Capybara::Session.new :chrome
	login
end

def login 
	@tum.visit 'https://www.tumblr.com/'
	@tum.find_by_id('signup_login_button').has_field?
	@tum.find_by_id('signup_login_button').click
	@tum.find_by_id('signup_determine_email').has_field?
	@tum.fill_in('signup_determine_email', :with => 'rliu@spartaglobal.co')
	@tum.find_by_id('signup_forms_submit').click
	@tum.find_by_id('signup_password').has_field?
	@tum.fill_in('signup_password', :with => 'SDET82017')
	@tum.find_by_id('signup_forms_submit').click
end