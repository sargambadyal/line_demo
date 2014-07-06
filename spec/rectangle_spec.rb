require 'spec_helper'

describe 'Rectangle' do

  it 'should return false if the given coordinates are  equal' do
    coordinate1=Coordinate.new(0, 0)
    expect(coordinate1).to eq(coordinate1)
  end

  it 'Returns perimeter as 4 if given coordinates are (0,1) & (1,0)' do
    top_left = Coordinate.new(0, 1)
    bottom_right = Coordinate.new(1, 0)    
    rectangle = Rectangle.new(top_left, bottom_right)

    expect(rectangle.perimeter).to eq(4)
  end


end