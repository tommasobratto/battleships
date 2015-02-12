
class Player

  def shoot(board)
    puts "type the cell's coordinates"
    board.take_shot
  end

  def place_ship(board, ship)
    puts "select the ship's location"
    board.place(ship)
  end

  def sunk?(ship, board)
    ship.has_been_hit?(board)
  end
end