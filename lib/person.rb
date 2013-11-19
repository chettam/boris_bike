require_relative 'bike'

class Person 

	def initialise()
   @bike  = Bike.new
   @hired = false
	end

  # Method for a person to hire a bike
	def hire(station)
		# person is guetting a bike from the station
		@hired = true
		bike = station.release({:van => false})
	end
	# a person's bike
	def bike
		@bike
	end

	# hired? should be true when a person has a bike
	def hired?
		@hired
	end

	# method to release a bike
	def release(station)
		station.dock(@bike)
		@hired = false
	end

# person container name
	def name
		 @name
	end
	#set the person name
	def name=(name)
		@name = name
	end
end