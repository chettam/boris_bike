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
		raise "Station is full" if full?
		bikes << bike	
	end

	# is the bike container full 
	def full?
		bike_count == capacity 
	end

	# the number of bikes in the container
	def bike_count
		bikes.count 
	end

	# is the container empty
	def empty?
		bike_count == 0
	end

	# reelease bike
	#def release(options={})
	#	return if empty?
	#		if options[:van] == false || options[:van] == true && options[:station] == false
	#		return @bikes.detect {|bike| !bike.broken? }
	#	elsif options[:van] == true && options[:station] == true
	#	return @bikes.detect {|bike| bike.broken? }
	#	else
	#		return
	#	end
	#end

	# return the available bikes ( bikes docked and not broken)
	def available_bikes(options={:van => false})
		return  options[:van] == false ? bikes.reject {|bike| bike.broken?} : bikes.reject {|bike| !bike.broken?}
	end
end