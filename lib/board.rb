class Board

  def initialize
    @grid = Array.new(2) { Array.new(2) }
  end

  def draw_grid
    (0..1).each do |row|
      (0..1).each do |cell|
        @grid[row] [cell] = 'miss'
      end
    end
    @grid
  end

  def place_hit
    row = gets.to_i
    cell = gets.to_i
    @grid[row] [cell] = 'hit'
  end

  def grid
    @grid
  end
end