require_relative '../lib/docking_station'

describe DockingStation  do

	let (:station) {DockingStation.new}
	let (:bike) {Bike.new}

	context "should" do

		it "dock a bike" do
			station.dock(bike)
			expect(station.bikes.length).to eq(1)
		end

		it "undock bike"do
			station.dock(bike)
			expect(station.undock).to eq(bike)
		end
	end
end