require_relative '../lib/bike_container'
# since we cannot instantiate a module, we will create an artificial class for testing purpose
class ContainerHolder ; include BikeContainer ;end

describe BikeContainer  do 
	let (:bike) {Bike.new}
	let (:container) {ContainerHolder.new}
	context "should " do
		it "have a set capacity" do
			container.capacity = 20 
			expect(container.capacity).to eq (20)
		end

		it "have a default capacity" do
			expect(container.capacity).to eq (10)
		end

		it "have a name that can be set" do
			container.name = "test"
			expect(container.name).to eq("test")
		end

		it "contain bikes" do
			expect(container.bikes).not_to be_nil
		end

		it "store bikes" do
			container.store(bike)
			expect(container.bikes.first).to eq(bike)
		end

		it "handle invalid object or nil" do
			expect(lambda {container.store(true)}).to raise_error(RuntimeError)
		end

		it "know the number of bikes in the container" do 
			container.store(bike)
			expect(container.bike_count).to eq(1)
		end

		it "no accept a bike if full" do
			container.capacity=1
			container.store(bike)
			expect(lambda {container.store(bike)}).to raise_error(RuntimeError)
		end

		it "know if empty" do
			expect(container.empty?).to be_true
		end

		it "return a bike" do
			container.store(bike)
			expect(container.release).to eq(bike)
		end
		
	end
end