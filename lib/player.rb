class Player

  attr_accessor :coordinates, :coord

  def initialize
    @coordinates_chosen = []
  end

  def make_move(board)
    puts "please select a cell"
    select_cell 
    board.check_hit(coord)
  end

  def place_ship(board, ship)
    puts "please select the starting cell"
    select_cell
    puts "please select the ship's orientation ('N', 'E', 'W', 'S')"
    ship.orientation = gets.chomp.upcase
    board.place(coord, ship)
  end

  def select_cell
    @coord = gets.chomp.downcase
    @coordinates_chosen << @coord
  end

  def query_ship(ship, board)
    ship.has_been_hit?(board)
  end

end