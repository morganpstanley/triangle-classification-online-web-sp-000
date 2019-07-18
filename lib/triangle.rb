class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = []
    @sides << side_1
    @sides << side_2
    @sides << side_3
    if raise_error?
      raise TriangleError
    else
      kind
    end
  end

  def raise_error?
    if @sides.any?(0)
    elsif @sides.any?{|side| side < 1}
    elsif @side_1 + @side_2 < @side_3 || @side_1 + @side_3 < @side_2 || @side_2 + @side_3 < @side_1
    end
  end

  def kind
    if @side_1 == @side_2 && @side_1 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError
  end
end
