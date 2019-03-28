class Triangle
  attr_accessor :sides
  
  def initialize(l1, l2, l3)
    @sides=[l1, l2, l3]
    @sides.sort!
  end
  
  def kind 
    if is_valid?
      if @sides.uniq.length==1 
        :equilateral
      elsif @sides.uniq.length==2
        :isosceles
      else 
        :scalene
      end
    end
  end
  
  def is_valid?
    if @sides[0]+@sides[1]<=@sides[2]|| sides.include?(0)
      raise TriangleError
    else
      true 
    end
  end
  
  class TriangleError < StandardError
  end
  
end
