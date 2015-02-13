class Player

  attr_accessor :coordinates, :x, :y

  def initialize
    @coordinates_chosen = []
  end

  def make_move(board)
    puts "please select a cell"
    select_cell 
    board.check_hit(x, y)
  end

  def place_ship(board, ship)
    puts "please select the starting cell"
    select_cell
    puts "please select the ship's orientation ('N', 'E', 'W', 'S')"
    ship.orientation = gets.chomp.upcase
    board.place(@x, @y, ship)
  end

  def select_cell
    coordinates = gets.chomp.downcase
    @coordinates_chosen << coordinates
    array = coordinates.split('') 
    @x = array[0].ord - 97
    @y = array[1].to_i - 1
  end

  def query_ship(ship, board)
    ship.has_been_hit?(board)
  end

end