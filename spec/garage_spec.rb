require_relative '../lib/garage'
describe Garage  do

		let (:garage) {Garage.new} 
		let (:broken_bike) {Bike.new}
		let (:van) {Van.new}

	context "Should" do

		it "dock a bike" do
			broken_bike.break
			garage.dock(broken_bike)
			expect(garage.bikes.first).to eq(broken_bike)
		end

		it "dock only broken bike" do
			broken_bike.break
			garage.dock(broken_bike)
			bike = garage.bikes.first
			expect(bike).to be_broken
		end
	end
end


