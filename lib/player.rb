class Player


  def make_move(board)
    coord = gets.chomp.downcase
    array = coord.split('') 
    x = array[0].ord - 97
    y = array[1] - 1
    board.check_hit(x, y)
  end

  def place_ship_on_board(board)
    coord = gets.chomp.downcase
    array = coord.split('') 
    x = array[0].ord - 97
    y = array[1].to_i - 1
    board.place_ship(x, y)
  end

end