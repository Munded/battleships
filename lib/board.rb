require_relative 'boat'

class Board
  attr_reader :boats

  def initialize
    @boats = []
  end

  def place boat
    boats << boat
  end

  def hit location
    if boats.any? { |boat| boat.placement == [location] }
      boat = boats.select { |b| b.placement == [location] }.sample
      boat.hit!
      return 'Hit'
    else
      return 'Miss'
    end
  end

  def won?
    boats.all? { |boats| boats.hit == true }
  end
end
