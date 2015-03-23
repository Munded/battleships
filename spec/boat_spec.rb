require 'boat'

describe Boat do 
 context 'placement of boat' do
   it 'knows its position' do
    boat = Boat.new
    allow(boat).to receive(:placement).and_return(['A1'])
    expect(boat.placement).to eq ['A1']
    end
   it 'can only be placed on the board' do
    boat = Boat.new
    allow(boat).to receive(:placement).and_return(['D1'])
    expect { boat.placement }.to raise_error 'Placement error'
    end
  end
end