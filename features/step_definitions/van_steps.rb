require_relative '../../lib/test_helpers'

include TestHelpers

Given(/^there is broken bikes at the station$/) do
  create_bikes()
   
end

Given(/^a van exist$/) do
  create_vans
  @van = @@vans[0]
end

Given(/^a garage exist$/) do
  create_garages
  @garage= @@garages[0]
end

When(/^a van collect broken bikes from the station$/) do
  @van.dock(@@stations[0])
  @van.move(@garage)

end

Then(/^garage should receive the broken bikes$/) do

  expect(@garage.bikes).not_to be_nil
end