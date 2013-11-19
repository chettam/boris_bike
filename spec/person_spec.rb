# Link to person class
require 'person'

 
describe Person do
	let(:person) { Person.new}
	let(:bike)  {Bike.new}
	let(:station) {DockingStation.new}

	it "should be able to hire a  working bike from a station" do
		# person hire a bike form a station
		station.dock(bike)
		# the bike should not be broken
		bike = person.hire(station)
		expect(bike.broken?).to  eq(false)
	end

	it "should be able to bring back bike to a station" do
		# person hire a bike form a station
		station.dock(bike)
		# person hire a bike form a station
		bike = person.hire(station)
		# bringin back the bike
		person.release(station)
	end	

	it "should have a name" do
		person.name="JB"
		expect(person.name).not_to be nil
	end

	it "should know if a person has a bike hired or not" do
		station.dock(bike)
		person.hire(station)
		expect(person.hired?).to eq(true)
	end

end