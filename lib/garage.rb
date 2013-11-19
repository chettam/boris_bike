require_relative 'bike_container'

class Garage

	# include all the methods we need in this class (from the module)
	include BikeContainer

	def initialize

	end

	def dock(bike)
		store(bike) if bike.broken?
	end

	def undock
		repair
		bike = release({:van =>true , :station => false})
	end

	def repair 
		bikes.each {|bike| bike.fix}
	end


end