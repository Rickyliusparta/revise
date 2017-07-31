@nav
Feature: Exploring Account page on tumblr
	
	Scenario: Testing the nav bar on tumblr
		Given I am on my account page
		And I can click on search bar 
		When I scroll to ps4
		Then I should be on ps4 page


	Scenario: Testing selected search
		Given I am on the current page
		When I click on the playstaion
		Then I should be on playstation page