class Ship

  attr_reader :size, :hit_points, :orientation

  def initialize(size, orientation)
    @size = size
    @hit_points = size
    @orientation = orientation
  end

  def self.pedalo(orientation)
    new(1, orientation)
  end

  def self.destroyer(orientation)
    new(2, orientation)
  end

  def self.cruiser(orientation)
    new(3, orientation)
  end

  def self.submarine(orientation)
    new(3, orientation)
  end

  def self.battleship(orientation)
    new(4, orientation)
  end

  def self.carrier(orientation)
    new(5, orientation)
  end

  def hit
    @hit_points = hit_points - 1
  end

  def sunk?
    hit_points == 0
  end

  def has_been_hit?(board)
    hit if board.report_status(x, y) == "Hit!"
    p "Ship sunk!" if sunk?
  end
  

end
