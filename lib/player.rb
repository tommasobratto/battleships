class Player

  def cell_coordinates
    @cell_coordinates
  end

  def select_cell
    letter = gets.chomp
    number = gets.chomp
    @cell_coordinates = (letter + number).to_s 
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