require_relative 'bike_container'

class Van

	# include all the methods we need in this class (from the module)
	include BikeContainer

	def initialize(options = {})
		# self.capacity is calling capacity=()  from the module BikeContainer, 
	 	# the second argument capacity is the capacity method from the module ( so we can set the capacity or use the difault value is nothing is passed)
	 	self.capacity= options.fetch(:capacity, capacity)
	end

	def dock(location)
		until full?
			if location.class == DockingStation
			 	bikes << location.undock_van
			 else
			 	bikes << location.undock
			 end
		end
	end

	def move(location)
		bikes.each do |bike|
			if location.class == DockingStation
				location.dock(bike) unless bike.broken?
			else
				location.dock(bike) if bike.broken?
			end
		end
	end
end
