Feature: Sign in to bbc 
	
	Scenario: Singing in to bbc 
		Given I am on sign in page
		When I input username and password
		Then i click sign in

	Scenario: If i enter wrong details i cannot sign in
		Given I am on sign in page
		When I enter wrong username 
		And I enter correct password
		And I click sign in
		Then I see error message 
