require 'board'

describe Board do
  let(:board) { Board.new }
  let(:boat1) { double :boat, placement: ['A1'], hit: false, hit!: nil }
  context 'Placing a boat on the board:' do
    it 'you can place boat' do
      board.place :boat
      expect(board.boats).to eq [:boat]
    end
    it 'boats cannot overlap' do
      board.place boat1
      boat2 = double :boat, placement: ['A1'], hit: false, hit!: nil
      expect { board.place boat2 }.to raise_error 'Space Overlap'
    end
  end
  context 'Hitting a boat:' do
    it 'you can hit a specific boat' do
      board.place boat1
      result = board.hit 'A1'
      expect(result).to eq 'Hit'
    end
    it 'you can miss a boat' do
      board.place boat1
      result = board.hit 'A2'
      expect(result).to eq 'Miss'
    end
    it 'if there is more than one boat placed' do
      boat2 = double :boat, placement: ['A2'], hit: false, hit!: nil
      board.place boat1
      board.place boat2
      result = board.hit 'A2'
      expect(result).to eq 'Hit'
    end
  end
end
