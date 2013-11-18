require_relative 'bike'

module BikeContainer

	DEFAULT_CAPACITY = 10
# the capacity of the bike container
	def capacity 
		@capacity ||= DEFAULT_CAPACITY
	end
 
  # set the capacity of the bike container
	def capacity=(value)
		@capacity = value
	end

	# bike container name
	def name
		 @name
	end
	#set the container name
	def name=(name)
		@name = name
	end

	# bike container array
	def bikes
		@bikes ||= []
	end

	# store a bike
	def store(bike)
		raise "invalid bike" unless bike.instance_of?(Bike) || bike.nil?
		print bike.inspect
		print @bikes.inspect
		bikes << bike	
	end

end