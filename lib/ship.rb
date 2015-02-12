class Ship

  attr_reader :size, :name, :hit_points

  def initialize(size, name)
    @size = size
    @name = name
    @hit_points = size
  end

  def self.pedalo
    new(1, 'pedalo')
  end

  def self.destroyer
    new(2, 'destroyer')
  end

  def self.cruiser
    new(3, 'cruiser')
  end

  def self.submarine
    new(3, 'submarine')
  end

  def self.battleship
    new(4, 'battleship')
  end

  def self.carrier
    new(5, 'carrier')
  end

  def hit
    @hit_points = hit_points - 1
  end

  def sunk?
    hit_points == 0
  end

  def has_been_hit?(board)
    hit if board.report_status(@coordinates) == "Hit!"
    p "Ship sunk!" if sunk?
  end
  

end
