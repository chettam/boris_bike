require_relative '../../lib/test_helpers'

include TestHelpers

Given(/^"(.*?)" stations exist$/) do |number|
		create_stations(number.to_i)
		
end

Given(/^there is bikes on the stations$/) do
  create_bikes
end

When(/^I ask for a bike$/) do
  @person =Person.new
  @person.name = "JB"
  @person.hire(@@stations[1])
end
Then(/^I should recieve a bike$/) do
	
   expect(@person.hired?).to be_true
   expect(@person.bike).to be_a Bike

end