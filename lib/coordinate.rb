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

end