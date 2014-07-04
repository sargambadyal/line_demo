require 'spec_helper'

describe 'Rectangle' do

  it 'should return false if the given coordinates are  equal' do
    coordinate1=Coordinate.new(0, 0)
    coordinate2=Coordinate.new(0, 0)
    expect(coordinate1).to eq(coordinate2)
  end

  it 'Returns perimeter as 4 if given coordinates are (0,1) & (1,0)' do
    coordinate1=Coordinate.new(0, 1)
    coordinate2=Coordinate.new(1, 0)
    expect(coordinate1.perimeter(coordinate2)).to eq(4)
  end


end