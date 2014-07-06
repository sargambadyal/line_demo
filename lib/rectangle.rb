#Class Rectangle defines a rectangle with given coordinates
class Rectangle #has a not is a
   attr_accessor :top_left , :bottom_right
  def initialize (top_left,bottom_right)
    @top_left =top_left
    @bottom_right = bottom_right

  end

   def perimeter()
     line1=Line.new(@top_left.x,@bottom_right.y,@top_left.x,@top_left.y)
     line2=Line.new(@bottom_right.x,@bottom_right.y,@top_left.x,@bottom_right.y)
     2 * (line1.length + line2.length)

   end

  def area()
    line1=Line.new(@top_left.x,@bottom_right.y,@top_left.x,@top_left.y)
    line2=Line.new(@bottom_right.x,@bottom_right.y,@top_left.x,@bottom_right.y)
    (line1.length * line2.length)

  end
end