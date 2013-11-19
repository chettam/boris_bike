Feature: Rent Bikes
	Scenario: Rent from a station
		Given "10" stations exist
		Given there is bikes on the stations
		When I ask for a bike
		Then I should recieve a bike