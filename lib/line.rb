# returns length of line
class Line
  def initialize (x1, y1, x2, y2)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
  end

  def length
    #if @x1==@x2 && @y1==@y2
    if [@x1,@y1] == [@x2,@y2]
      0
    else
      1
    end
  end

end