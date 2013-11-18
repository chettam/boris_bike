class Bike

   def initialize
    @broken = false
   end

   # status of a bike
   def broken?
   	@broken
   end

   # break a bike
  def break
    @broken = true
  end
end
