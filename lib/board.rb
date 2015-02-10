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

  def place_ship(x, y)
    row = x
    column = y
    @grid[row] [column] = 'hit'
  end

  def check_hit(x, y)
    row = x
    column = y
    if @grid[row] [column] == 'hit'
      p "Hit!"
      @grid[row] [column] = 'hit_marker'
      # game.score(player)
    elsif @grid[row] [column] == 'miss'
      p "Miss!"
      @grid[row] [column] = 'miss_marker'
    elsif @grid[row] [column] == 'hit_marker'
      p "You can't hit a place you've already selected"
    else @grid[row] [column] == 'miss_marker'
      p "You can't hit a place you've already selected"
    end
  end

  def grid
    @grid
  end
end