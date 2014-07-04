# returns integer length of line
class Line
  #attr_reader :x1, :y1, :x2, :y2
  def initialize (x1, y1,x2,y2)
    @coordinate1 = Coordinate.new(x1,y1)
    @coordinate2 = Coordinate.new(x2,y2)



  end

  def length
    Math.sqrt((@coordinate1.x - @coordinate2.x)**2 + (@coordinate1.y - @coordinate2.y)**2).floor
  end

  def coordinates
    [@coordinate1,@coordinate2]
  end

  def ==(line)
    (length > 0 || line.length >0) &&
         ((coordinates == line.coordinates) || (line.coordinates == [@coordinate2,@coordinate1])) ? true :false
  end
end