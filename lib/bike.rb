class Bike
  def initialize
    fix
  end

  # status of a bike
  def broken?
   @broken
  end

  # break a bike
  def break
    @broken = true
  end

  # fix a bike
  def fix
    @broken = false
  end
end
