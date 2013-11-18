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

  # have a name
  def name
    @name
  end

  # set a name
  def name=(name)
    @name=name
  end
end
