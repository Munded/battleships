require 'board'

describe Board do
  context 'Placing a boat on the board:' do
    it 'you can place boat' do
      board = Board.new
      board.place :boat
      expect(board.boats).to eq [:boat]
    end
  end
  context 'Hitting a boat:' do
    it 'you can hit a specific boat' do
      board = Board.new
      boat = double :boat, placement: ['A1'], hit: false, hit!: nil
      board.place boat
      result = board.hit 'A1'
      expect(result).to eq 'Hit'
    end
    it 'you can miss a boat' do
      board = Board.new
      boat = double :boat, placement: ['A1'], hit: false, hit!: nil
      board.place boat
      result = board.hit 'A2'
      expect(result).to eq 'Miss'
    end
    it 'can hit a specific boat if there is more than one boat placed' do
      board = Board.new
      boat1 = double :boat, placement: ['A1'], hit: false, hit!: nil
      boat2 = double :boat, placement: ['A2'], hit: false, hit!: nil
      board.place boat1
      board.place boat2
      result = board.hit 'A2'
      expect(result).to eq 'Hit'
    end
  end
end
