class Ship

  attr_reader :size, :name, :hit_points

  def initialize(size, name)
    @size = size
    @name = name
    @hit_points = size
  end

  def self.destroyer
    new(2, 'destroyer')
  end

  def hit
    size - 1
  end





end