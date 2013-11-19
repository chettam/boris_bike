require_relative './lib/test_helpers'

include TestHelpers

	def status_station
		@@stations.map {|station| "Station #{station.name} has a capacity of #{station.capacity} there is #{station.available_bikes.count} available bikes and #{station.bike_count - station.available_bikes.count} broken bikes" }
	end

  def status_garage
    @@garages.map {|garage| "Garage #{garage.name} has a capacity of #{garage.capacity} there is #{garage.available_bikes.count} available bikes and #{garage.bike_count - garage.available_bikes.count} broken bikes" }
  end


start

puts status_station

puts "----------------------------------------"
puts status_garage
puts "----------------------------------------"
puts user_activity
puts "----------------------------------------"
puts status_station
puts "----------------------------------------"
puts status_garage

