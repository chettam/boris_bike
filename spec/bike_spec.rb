require_relative '../lib/bike'

describe Bike do 
	let (:bike) {Bike.new}
	context "Should Be" do

		it "not broken when create" do
			expect(bike).not_to be_broken
		end
	end
end