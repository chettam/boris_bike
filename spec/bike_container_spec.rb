require_relative '../lib/bike_container'
# since we cannot instantiate a module, we will create an artificial class for testing purpose
class ContainerHolder ; include BikeContainer ;end

describe BikeContainer  do 
	let (:bike) {Bike.new}
	let (:broken_bike) {Bike.new}
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
			expect(container.release({:van => false , :station =>true})).to eq(bike)
		end

		it "return nil if the container ie empty" do
			expect(container.release({:van => false , :station =>true})).to be_nil
		end

		it "return a working bike to users" do
			load_container_with_bikes
			bike = container.release({:van => false , :station =>true})
			expect(bike).not_to be_broken
		end

		it "return a broken bike to vans while at stations" do
			load_container_with_bikes
			bike = container.release({:van => true , :station =>true})
			expect(bike).to be_broken
		end

		it "return a working bike to vans at garage" do
			load_container_with_bikes
			bike = container.release({:van => true , :station =>false})
			expect(bike).not_to be_broken
		end

		it "return available bikes without broken" do
			load_container_with_bikes
			bikes = container.available_bikes
			bikes.each do |bike|
				expect(bike.broken?).not_to be_true
			end
		end

		it "return broken bikes to vans" do
			load_container_with_bikes
			expect(container.available_bikes({:van => true}).length).to eq(1)
		end

		def load_container_with_bikes
			broken_bike.break
			container.store(broken_bike)
			container.store(bike)
			container.store(bike)
		end

	end
end