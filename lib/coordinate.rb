#compares the two coordinates
class Coordinate
  attr_reader :x , :y
  def initialize (x,y)
    @x = x
    @y = y
  end

  def ==(coordinate)
    [@x,@y]==[coordinate.x,coordinate.y]
  end

  def perimeter(coordinate)
    line1=Line.new(x,coordinate.y,x,y)
    line2=Line.new(x,coordinate.y,coordinate.x,coordinate.y)
    2 * (line1.length + line2.length)

  end
end