require 'boat'

describe Boat do
  context 'placement of boat' do
    it 'knows its position' do
      boat = Boat.new 'A1'
      expect(boat.placement).to eq ['A1']
      # allow(subject).to receive(:grid_number).and_return(['A1'])
      # expect(subject.grid_number).to eq ['A1']
    end

    it 'raises error for invalid placement on board' do
      expect { Boat.new 'D4' }.to raise_error 'Placement Error'
    end

    it 'can be placed on the board' do
      expect { Boat.new 'A2' }.not_to raise_error
    end
  end

  context 'hitting a boat' do
    it 'a boat has a hit status' do
      expect(Boat.new 'A2').not_to be_hit
    end
    it 'a hit boat will change it\'s hit status' do
      boat = Boat.new 'A1'
      boat.hit! 
      expect(boat).to be_hit
    end
  end
end
