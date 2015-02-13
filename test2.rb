class Board

def initialize
  draw_grid
end

def draw_grid
  @grid = Hash.new
    ('a'..'b').each do |letter|
      (1..2).each do |number|
        @grid["#{letter}#{number}"] = 'water '
      print @grid["#{letter}#{number}"]
      end
      puts 
    end
  end

  def place(ship)
    orientation = ship.orientation
    coord = ship.coord    


    if orientation == 'H'
      @grid[coord] = ship
      ship.size.times { @grid[coord].next = ship }

    else orientation == 'V'
     
    end
  end
end

class Ship

  attr_reader :size, :coord, :orientation

  def initialize
    @size = 2
    @coord = 'a1'
    @orientation = 'H'
  end
end

board = Board.new

ship = Ship.new

board.place(ship)


