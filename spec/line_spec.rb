require 'spec_helper'

describe Line do
  it "returns length equal to 0 if the two coordinates are same" do
    line=Line.new(1,1,1,1)
    expect(line.length).to eq(0)
  end

  
end