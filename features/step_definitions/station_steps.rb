
Given(/^there is broken bikes at the garage$/) do
  (0..rand(10)).each do 
        bike = Bike.new
        bike.break 
        @garage.dock(bike)
    end
end

When(/^a van collect broken bikes from the garage$/) do
  @van.dock(@garage)
  @current_count =@@stations[0].bike_count
  
  @van.move(@@stations[0])
end

Then(/^station should receive the repaired bikes$/) do
  expect(@@stations[0].bike_count).not_to eq(@current_count)
end