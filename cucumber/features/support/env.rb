require 'cucumber'
require 'capybara'
require 'rspec'

Capybara.register_driver :chrome do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end


Before do
	@bbc = Capybara::Session.new :chrome
end

