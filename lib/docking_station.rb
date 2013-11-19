require_relative 'bike_container'

class DockingStation

	# include all the methods we need in this class (from the module)
	include BikeContainer

	def initializer

	end

	def dock(bike)
		store(bike)
	end

	def undock(options ={:van => false})
	 bike = release(options)
	end
end