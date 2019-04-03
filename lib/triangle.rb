class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle

    if @a == @c && @c == @b
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end
  
  def validate_triangle
    triangle = [(a + b > c), (b + c > a), (c + a > b)]
    [a, b, c].each {|s| triangle << false if s <= 0 }
    raise TriangleError if triangle.include?(false)
  end


  class TriangleError < StandardError
  end


end
