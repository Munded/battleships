require 'boat'

describe Boat do 
  context 'placement of boat' do
    it 'knows its position' do
      allow(subject).to receive(:placement).and_return(['A1'])
      expect(subject.placement).to eq ['A1']
    end

    it 'raises error for invalid placement on board' do
      expect { subject.placement 'D4' }.to raise_error 'Placement Error'
    end

    it 'can be placed on the board' do
      expect { subject.placement 'A2' }.not_to raise_error
    end

    it 'boat can not be placed on an occupied space' do
      boat1 = Boat.new, grid_number = 'A1'
      allow(subject).to receive(:placement).and_return(['A1'])
      expect{ subject.placement }.to raise_error 'Space Occupied' 
    end
  end
  # it 'can have different sizes' do
  #   boat = Boat.new
  #   allow(boat).to receive(:size).and_return(1)
  #   allow(boat).to receive(:placement).and_return('A1', 'A2')
  #   expect { boat.boat_length }.to raise_error 'Wrong size'
  # end
end