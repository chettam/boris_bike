require_relative '../lib/bike_container'
# since we cannot instantiate a module, we will create an artificial class for testing purpose
class ContainerHolder ; include BikeContainer ;end

describe BikeContainer  do 
	let (:bike) {Bike.new}
	let (:container) {ContainerHolder.new}
	context "Should " do
		it "have a set capacity" do
			container.capacity = 20 
			expect(container.capacity).to eq (20)
		end
	end
end