require 'capybara/rspec'
require 'boat'
require 'board'

feature 'play battleships' do
  scenario 'place one boat and shoot it' do
    board = Board.new
    boat = Boat.new 'A1'
    board.place boat
    result = board.hit 'A1'
    expect(result).to eq 'Hit'
    expect(board.won?).to eq true
  end
end
