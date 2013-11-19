Feature: Van to station
	Scenario: Van moves the repaired bikes form a garage to a station
		Given "1" stations exist
		Given a garage exist
		Given there is broken bikes at the garage
		Given a van exist
		When  a van collect broken bikes from the garage
		Then  station should receive the repaired bikes