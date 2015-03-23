class Boat

  def initialize
    @placement = []
  end

  def placement grid_number
    fail 'Placement Error' unless grid_number =~ /[ABC][123]/
    @placement << grid_number
  end

  def size n
    fail 'Wrong size' if @placement.length > n
  end

  def boat_length
    @placement.length
  end
end