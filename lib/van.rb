require_relative 'bike_container'

class Van

	# include all the methods we need in this class (from the module)
	include BikeContainer

	def initialize

	end

	def dock(location)
		until full?
			bikes << location.release({:van =>true , :station =>false})
		end
	end
end
