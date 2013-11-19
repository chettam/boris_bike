require_relative 'bike_container'

class Van

	# include all the methods we need in this class (from the module)
	include BikeContainer

	def initialize

	end

	def dock(location)
		until full?
			bikes << location.release({:van =>true , :station =>true})
		end
	end

	def move(location)
		bikes.each do |bike|
			location.dock(bike)
		end
	end

end
