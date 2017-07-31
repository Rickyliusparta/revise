Feature: logging in tumblr
	
	Scenario: I can log into my account
		Given I am on the web page
		And I click log in
		When I am can confirm I am on login page
		And I enter my details and follow the instructions
		Then I should be logged in
