
class Board

  attr_reader :grid, :coordinates, :ships

  def initialize
    @ships = {}
    @grid = Hash.new
    ('a'..'b').each do |letter|
      (1..2).each do |number|
        @grid["#{letter}#{number}"] = 'water '
      print @grid["#{letter}#{number}"]
      end
      puts 
    end
  end

  def get_coordinates
    @coordinates = gets.chomp
  end

  def place(ship) 
    get_coordinates
    @ships[:ship_location] = ship
    ship.size.times { grid[coordinates] = @ships[:ship_location]}
  end

  def take_shot
    get_coordinates
    grid[coordinates] = 'hit ' if grid[coordinates] == @ships[:ship_location]
    grid[coordinates] = 'miss ' if grid[coordinates] == 'water '
    report_status(@coordinates)
  end

  def report_status(coordinates)
    if grid[@coordinates] == 'hit '
      p "Hit!"
    else
      p "Miss!"
    end
  end
end
