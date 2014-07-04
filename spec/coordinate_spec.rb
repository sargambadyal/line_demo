require 'spec_helper'

describe 'Coordinate' do
  let(:coordinate1)  {Coordinate.new(1,2)}
  it 'should return true for equal coordinates' do
    coordinate2 = Coordinate.new(1,2)
      expect(coordinate1).to eq(coordinate2)

  end

  it 'should return false for different coordinates' do
    coordinate2 = Coordinate.new(2,2)
    expect(coordinate1).to_not eq(coordinate2)

  end


end