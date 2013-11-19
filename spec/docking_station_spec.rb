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

		it "undock broken bikes for vans" do
			bike.break
			station.dock(bike)
			expect(station.undock_van).to eq(bike)
		end

		it "not undock working bikes to van" do 
			station.dock(bike)
			expect(station.undock_van).to be_nil
		end

		it "not undock broken bikes for users" do
			bike.break
			station.dock(bike)
			expect(station.undock).to be_nil
		end
	end
end