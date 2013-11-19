require_relative '../lib/van'

describe Van  do
	let (:garage) {Garage.new} 
	let (:station) {DockingStation.new}
	let (:bike) {Bike.new}
	let (:broken_bike) {Bike.new}
	let (:van) {Van.new}
	
	context "should" do

		# dock a bike
		it "dock bike" do			
			van.store(bike)
			expect(van.bikes.length).to eq(1)
		end

		it "get all bikes from a garage" do
			set_capacity
			load_garage
			van.dock(garage)
			expect(van.bikes.length).to eq(van.capacity)
		end	

		it "get all bikes from a station" do
			set_capacity
			load_station
			van.dock(station)
			expect(van.bikes.length).to eq (van.capacity)
		end

		def load_garage
			bike.break
			20.times { garage.dock(bike)}
		end

		def load_station
			bike.break
			20.times { station.dock(bike)}
		end

		def set_capacity
			station.capacity = 100
			van.capacity = 10
			garage. capacity =20
		end

	end
end