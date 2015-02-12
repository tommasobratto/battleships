
class Board

  attr_reader :grid, :coordinates

  def initialize
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

  def place_ship(ship) 
    get_coordinates
    ship.size.times { grid[coordinates] = 'ship '}
  end

  def place_marker
    get_coordinates
    grid[coordinates] = 'hit ' if grid[coordinates] == 'ship '
    grid[coordinates] = 'miss ' if grid[coordinates] == 'water '
    report_status(coordinates)
  end

  def report_status(coordinates)
    if grid[coordinates] == 'hit '
      p "Hit!"
    else
      p "Miss!"
    end
  end
end
