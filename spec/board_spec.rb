require 'board'

describe Board do
  context 'Placing a boat on the board' do
    it 'you can place boat' do
    	board = Board.new
      board.place :boat
      expect(board.show_boats).to eq [:boat]
    end
  end
end
