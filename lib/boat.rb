class Boat
  attr_reader :placement
  attr_reader :hit
  alias_method :hit?, :hit

  def initialize grid_number
    @placement = []
    fail 'Placement Error' unless grid_number =~ /[ABCDEF][123456]/
    @placement << grid_number
    @hit = false
  end

  def boat_length
    @placement.length
  end

  def hit!
    @hit = true
  end
end
