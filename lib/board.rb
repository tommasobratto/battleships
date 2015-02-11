require_relative 'cell'
require_relative 'ship'

class Board

  include Cell

  attr_reader :grid

  def initialize
    draw_board
  end

  def draw_board
  @grid = Hash.new
    ('a'..'b').each do |letter|
      (1..2).each do |number|
        @grid["#{letter}#{number}"] = water
      print @grid["#{letter}#{number}"]
      end
      puts 
    end
  end

  def place_ship(cell_coordinates) # we can place the ship "pedalo"
    grid[cell_coordinates] = ship
  end

  def place_marker(cell_coordinates)
    grid[cell_coordinates] = hit if grid[cell_coordinates] == ship
    grid[cell_coordinates] = miss if grid[cell_coordinates] == water
    report_status(cell_coordinates)
  end

  def report_status(cell_coordinates)
    if grid[cell_coordinates] == hit
      p "Hit!"
    else
      p "Miss!"
    end
  end
end
