# load the required files
require_relative 'docking_station'
require_relative 'van'
require_relative 'garage'
require_relative 'person'
require_relative 'bike'

module TestHelpers

		# names 
	@@station_names = ["Old Street","Oxford Street","City Road","Meadowside","Regent Street","Totenham Court Road","Commercial Road","Moorgate","Park Lane","Leicester Sqare"]
	@@van_names 	 = ["Van 1","Van2"]
	@@garage_names = ["garage 1","garage 2"]
	@@person_names = ["JB","Peter","Giacomo","James","Tom","Gianni","Bruce","Hannah","Anath","Ken","Michael","Erica"]
	@@stations     = []
	@@vans         = []
	@@garages  		 = []
	@@persons      = []

	# program start
	def start 
		create_stations
		create_vans
		create_garages
		create_persons
		create_bikes
	end

	# create stations
	def create_stations(times)
		@@station_names[0..times].each do|station_name|  
			station = DockingStation.new(:capacity => 100)
			station.name = station_name
			@@stations << station
		end
	end

	# create vans
	def create_vans
		@@van_names.each do |van_name|
		 van = Van.new
		 van.name = van_name
		 @@vans  << van
		end
	end

	#create garages
	def create_garages 
		@@garage_names.each do |garage_name|
			garage = Garage.new(:capacity => rand(100))
			garage.name = garage_name
			@@garages << garage
		end
	end

	# create persons

	def create_persons
		@@person_names.each do |person_name|
			person = Person.new
			person.name=person_name
			@@persons << person
		end
	end

	# create bikes randomly on the stations
	def create_bikes
		@@stations.each do|station| 
  		(0..rand(100)).each do 
        bike = Bike.new
        bike.break if rand(200) % 6 == 0
        station.dock(bike) 
  		end
    end
	end

	# shows the status of a station
	def status_station
		print_separator
		@@stations.each {|station| puts "Station #{station.name} has a capacity of #{station.capacity} there is #{station.available_bikes.count} available bikes and #{station.bike_count - station.available_bikes.count} broken bikes" }
		print_separator
	end

  def status_garage
    print_separator
    @@garages.each {|garage| puts "Garage #{garage.name} has a capacity of #{garage.capacity} there is #{garage.available_bikes.count} available bikes and #{garage.bike_count - garage.available_bikes.count} broken bikes" }
  end
	def print_separator 
		puts "----------------------------------------"
	end

end