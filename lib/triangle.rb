class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def sides
    [@side_one, @side_two, @side_three]
  end
  
  def kind
    if self.sides.any?{|side| side <= 0} || self.sides.any?{|side| side >= (self.sides.sum - side)}
      raise TriangleError
    end
    self.sides.reject{|side| side != @side_one}.size
  end
  
  class TriangleError < StandardError
    
  end
  
end
