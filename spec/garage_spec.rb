require_relative '../lib/garage'

describe Garage  do

		let (:garage) {Garage.new} 
		let (:bike) {Bike.new}
		let (:broken_bike) {Bike.new}
		let (:van) {Van.new}

	context "Should" do

		it "dock a bike" do
			dock_broken_bike
			expect(garage.bikes.first).to eq(broken_bike)
		end

		it "dock only broken bike" do
			dock_broken_bike
			bike = garage.bikes.first
			expect(bike).to be_broken
		end

		it "not dock a working bike" do
			garage.dock(bike)
			expect(garage.bikes.first).to  be_nil
		end

		it "release bikes to vans" do
			dock_broken_bike
			bike = garage.undock
			print bike
			expect(bike.broken?).not_to be_true
		end

		def dock_broken_bike
			broken_bike.break
			garage.dock(broken_bike)
		end

	end
end


