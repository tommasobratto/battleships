class Player

  attr_accessor :coordinates

  def initialize
    @coordinates_chosen = []
  end

  def make_move(board)
    coordinates = gets.chomp.downcase
    array = coordinates.split('') 
    x = array[0].ord - 97
    y = array[1].to_i - 1
    board.check_hit(x, y)
  end

  def place_ship(board, ship)
    ship.capacity.times { self.select_cell(board) }
  end

  def select_cell(board)
    coordinates = gets.chomp.downcase
    @coordinates_chosen << coordinates
    array = coordinates.split('') 
    x = array[0].ord - 97
    y = array[1].to_i - 1
    board.place_ship(x, y)
  end

end