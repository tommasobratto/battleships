class Ship

  attr_reader :size, :hit_points, :orientation, :start_point

  def initialize(size, orientation, start_point)
    @size = size
    @hit_points = size
    @start_point = start_point
    @orientation = orientation
  end

  def self.pedalo
    new(1)
  end

  def self.destroyer
    new(2)
  end

  def self.cruiser
    new(3)
  end

  def self.submarine
    new(3)
  end

  def self.battleship
    new(4)
  end

  def self.carrier
    new(5)
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
