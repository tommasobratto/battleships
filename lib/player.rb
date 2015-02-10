class Player

  def place_ship_on_board(board)
    board.place_ship
  end

  def make_move(board)
    x = gets.to_i # row
    y = gets.to_i # column
    board.check_hit(x, y)
  end

end