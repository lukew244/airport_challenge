require_relative 'plane'

class Airport

  attr_reader :capacity #planes should be moved to a private method
  DEFAULT_CAPACITY = 5

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    fail 'Cannot land as the airport is full' if full?
    plane.land(self)
    planes << plane
    self
  end

#this will need a fail if it weather stormy
  def take_off(plane)
    plane.take_off(self)
    planes.delete_at(planes.index(plane))

  end

  def full?
    planes.count >= capacity
  end

  #private - just need to uncomment this and check tests

  def planes
    @planes
  end

end