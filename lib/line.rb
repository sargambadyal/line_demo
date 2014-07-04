# returns integer length of line
class Line
  attr_reader :x1, :y1, :x2, :y2
  def initialize (x1, y1, x2, y2)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
  end

  def length
    Math.sqrt((@x1 - @x2)**2 + (@y1 - @y2)**2).floor
  end

  def coordinates
    [@x1,@y1,@x2,@y2]
  end

  def ==(line)
    (length > 0 || line.length >0) &&
         ((coordinates == line.coordinates) || (line.coordinates == [@x2,@y2,@x1,@y1])) ? true :false
  end
end