require_relative '../lib/garage'

describe Garage  do

		let (:garage) {Garage.new} 
		let (:bike) {Bike.new}
		let (:van) {Van.new}

	context "Should" do

		it " dock a bike" do
			garage.dock(bike)
		end

	end
end


