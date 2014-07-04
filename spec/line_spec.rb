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

  context "return correct length" do
    it "return length 4 when coordinates are (1,2) and (5,2)" do
      line=Line.new(1,2,5,2)
      expect(line.length).to eq(4)
    end

    it "return length 9 when coordinates are (10,1) and (1,1)" do
      line=Line.new(10,1,1,1)
      expect(line.length).to eq(9)
    end

    it "return length 5 when coordinates are (2,4) and (6,7)" do
      line=Line.new(2,4,6,7)
      expect(line.length).to eq(5)
    end

  end


end