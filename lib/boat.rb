class Boat
  attr_reader :placement
  attr_reader :hit
  alias_method :hit?, :hit

  def initialize grid_number
    @placement = []
    gnl = grid_number.length == 2
    fail 'Placement Error' unless gnl && grid_number =~ /[ABCDEFGHI][123456789]/
    @placement << grid_number
    @hit = false
  end

  def number_of_boats
    @placement.length
  end

  def hit!
    @hit = true
  end
end
