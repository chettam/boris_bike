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

end