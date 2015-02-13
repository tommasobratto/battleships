class Player

  attr_accessor :coordinates, :x, :y

  def initialize
    @coordinates_chosen = []
  end

  def make_move(board)
    select_cell
    board.check_hit(x, y)
  end

  def place_ship(board, ship)
    select_cell
    board.place(@x, @y, ship)
  end

  def select_cell
    coordinates = gets.chomp.downcase
    @coordinates_chosen << coordinates
    array = coordinates.split('') 
    @x = array[0].ord - 97
    @y = array[1].to_i - 1
  end

end