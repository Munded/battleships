require 'board'

describe Board do
  context 'Placing a boat on the board' do
    it 'you can place boat' do
    	board = Board.new
      board.place :boat
      expect(board.show_boats).to eq [:boat]
    end
    it 'you can hit a specific boat' do
      board = Board.new
      boat = double :boat, grid_number: 'A1'
      board.place boat
      board.hit boat
      expect(board.show_boats).to eq []
    end
  #   it 'you can miss a boat' do
      

  #     expect(subject.hit boat).to eq false
  # end
end
end

