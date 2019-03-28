class Triangle
  attr_accessor :a,:b,:c,:type

  def initialize(a,b,c)
    @a,@b,@c = a,b,c
  end

  def kind
    if @a<=0 || @b<=0 || @c<=0
      raise TriangleError
    end
    if @a+@b<=@c || @b+@c<=@a || @c+@a<=@b
      raise TriangleError
    end


    if @a==@b && @b==@c
      @type = :equilateral
    elsif @a==@b || @b==@c || @c==@a
        @type = :isosceles
    elsif @a!=@b && @b!=@c
        @type = :scalene
    end


    return @type
  end


  class TriangleError < StandardError
    def message
      "..."
    end
  end

end
