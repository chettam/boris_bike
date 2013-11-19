require_relative 'bike_container'

class Van

	# include all the methods we need in this class (from the module)
	include BikeContainer

	def initialize

	end

	def dock(location)
		until full?
			 	bikes << location.undock
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
