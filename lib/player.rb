
class Player

  def shoot(board)
    puts "type the cell's coordinates"
    board.take_shot
  end

  def place_ship(board, ship)
    puts "please place a ship"
    board.place(ship)
  end
end