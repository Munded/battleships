class Board
  def initialize 
    @boats = []
  end
	def place boat
    @boats << boat 
	end

  def show_boats
    @boats
  end
end
