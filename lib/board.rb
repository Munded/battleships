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
  
  def hit boat
    @boats.delete(boat)
  end
  
  # def hit boat
  #   if boats.select { |b| boat -- b }

  # end
end
