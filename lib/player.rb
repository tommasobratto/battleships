class Player

  attr_reader :cell_coordinates

  def select_cell
    puts "type the cell's coordinates"
    @cell_coordinates = gets.chomp
  end

  def place_ship(board)
    select_cell
    board.place_ship(cell_coordinates)
  end

  def make_move(board)
    select_cell
    board.place_marker(cell_coordinates)
  end
end