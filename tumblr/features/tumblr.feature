Feature: testing tumblr web site

	Scenario: registering with tumblr
		Given I am on tumblr web page
		When I click started 
		Then I can fill in the form to register
		And I click sign up