require_relative '../lib/bike'

describe Bike do 
	let (:bike) {Bike.new}
	context "Should " do
		it "not be broken when create" do
			expect(bike).not_to be_broken
		end

		it "be able to break" do
			bike.break
			expect(bike).to be_broken
		end

		it "be able to be fixed" do
			bike.fix
			expect(bike).not_to be_broken
		end

		it "have a name and tale a name" do
			bike.name = "test"
			expect(bike.name).not_to be_nil
		end
	end
end