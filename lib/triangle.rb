require 'pry'
class Triangle
  attr_reader :a, :b, :c
  
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c 
  end
  
  def kind
    if @a <= 0 || @b <= 0 || @c <= 0 || (@a + @b) <= @c || (@b + @c) <= @a || (@a + @c) <= @b
      begin 
        raise Triangle::TriangleError
      end
    end
      
    if @a == @b && @a == @c 
      return :equilateral
    elsif (@a == @b && @a != @c) || (@a == @c && @a != @b) || (@b == @c && @b != @a)
      return :isosceles
    else 
      return :scalene 
    end
  end 
  
  class TriangleError < StandardError 
    def message 
      "Your triangle is fake af. All sides must be greater than 0 and any 2 sides should be longer than the remaining side."
    end
  end 
  
end