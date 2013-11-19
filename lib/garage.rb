require_relative 'bike_container'

class Garage

	# include all the methods we need in this class (from the module)
	include BikeContainer

	def dock(bike)
		store(bike)
	end


end