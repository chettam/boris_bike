require_relative 'bike_container'

class DockingStation

	# include all the methods we need in this class (from the module)
	include BikeContainer

	def initialize(options = {})
		# self.capacity is calling capacity=()  from the module BikeContainer, 
	 	# the second argument capacity is the capacity method from the module ( so we can set the capacity or use the difault value is nothing is passed)
	 	self.capacity= options.fetch(:capacity, capacity)
	end

	def dock(bike)
		store(bike)
	end

	def undock(options ={:van => true ,:station => true})
	 bike = release(options)
	end
end