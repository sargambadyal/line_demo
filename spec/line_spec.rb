require 'spec_helper'

describe Line do
  it "returns length equal to 0 if the two coordinates are same" do
    line=Line.new(1,1,1,1)
    expect(line.length).to eq(0)
  end
  it "return length equal greater then 0 if the two coordinates are not same" do
    line=Line.new(1,1,2,2)
    expect(line.length).to be > 0
  end


end