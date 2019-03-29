class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    impossibru
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
      :isosceles
    else
      :scalene
    end
  end
  
  def impossibru
    if (side1 <= 0 || side2 <= 0 || side3 <= 0) || ((side1 + side2 <= side3) || (side2 + side3 <= side1) || (side1 + side3 <= side2))
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
  end
  
end
