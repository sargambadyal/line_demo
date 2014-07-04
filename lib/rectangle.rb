#Class Rectangle defines a rectangle with given coordinates
class Rectangle  #has a not is a
   attr_reader :x , :y
  def initialize (x,y)
    @x = x
    @y = y

  end

  def == (coordinate)
    [x,y] == [coordinate.x,coordinate.y]
  end

#add area
end