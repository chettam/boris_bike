Feature: Van to garage
	Scenario: Van moves the broken bikes form a station to a garage
		Given "1" stations exist
		Given there is broken bikes at the station
		Given a van exist
		Given a garage exist
		When  a van collect broken bikes from the station
		Then  garage should receive the broken bikes
