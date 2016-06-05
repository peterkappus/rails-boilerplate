Feature: Have a homepage.

	Scenario: See the homepage.
		When I visit "/"
		Then I should see "Welcome" within "h1"
