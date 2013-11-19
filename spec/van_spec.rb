require_relative '../lib/van'

describe Van  do
	let (:garage) {Garage.new} 
	#let (:station) {Station.new}
	let (:bike) {Bike.new}
	let (:broken_bike) {Bike.new}
	let (:van) {Van.new}
	
	context "should" do

		# dock a bike
		it "dock bike" do
			van.store(bike)
			expect(van.bikes.length).to eq(1)
		end

		it "get all bikes from a station" do
			van.capacity = 10
			load_garage
			van.dock(garage)
			expect(van.bikes.length).to eq(van.capacity)
		end	

		def load_garage
			garage.capacity = 20
			bike.break
			20.times { garage.dock(bike)}
		end
	end
end