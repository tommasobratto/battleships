class Board

  def initialize
    @grid = Array.new(2) { Array.new(2) }
  end

  def draw_grid
    (0..1).each do |row|
      (0..1).each do |column|
        @grid[row] [column] = 'miss'
      end
    end
    @grid
  end

  def place_hit(x, y)
    row = x
    column = y
    @grid[row] [column] = 'hit'
  end

  def grid
    @grid
  end
end