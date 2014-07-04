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

    it "return integer length 6 when coordinates are (1,3) and (7,4)" do
      line=Line.new(1,3,7,4)
      expect(line.length).to eq(6)
    end

    it "return integer length 4 when coordinates are (3,2) and (6,5)" do
      line=Line.new(3,2,6,5)
      expect(line.length).to eq(4)
    end


  end

  context "comparing two lines" do

    let(:line1) {Line.new(1,1,2,1)}

    it "should be true if the coordinates are same " do

      line3=Line.new(1,1,2,1)
      expect(line1).to eq(line3)
    end

    it "should be true if the coordinates of one line is reverse of other " do
      line2=Line.new(2,1,1,1)
      expect(line1).to eq(line2)
    end

    it "should be false if the coordinates are different " do
      line2=Line.new(1,1,3,1)
      expect(line1).to_not eq(line2)
    end

    it "should be false if the line length is 0 " do
      line3 = Line.new(1,1,1,1)
      expect(line1).to_not eq(line3)
    end

    it "should be false if the line length is 0 " do
      line2=Line.new(1,1,1,1)
      line3 = Line.new(1,1,1,1)
      expect(line3).to_not eq(line2)
    end

    context "#coordinates" do

      it "should return coordinates" do

        line = Line.new(1,2,3,4)
        coordinate1 = Coordinate.new(1,2)
        coordinate2 = Coordinate.new(3,4)
        expect(line.coordinates).to eq([coordinate1,coordinate2])
      end

    end

  end




end