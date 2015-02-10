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

  def place_ship
    row = gets.to_i
    column = gets.to_i
    @grid[row] [column] = 'hit'
  end

  def check_hit(x, y)
    row = x
    column = y
    if @grid[row] [column] == 'hit'
      p "you've hit something"
      @grid[row] [column] = 'hit_marker'
      # game.score(player)
    elsif @grid[row] [column] == 'miss'
      p "you have missed! HAHAHA"
      @grid[row] [column] = 'miss_marker'
    elsif @grid[row] [column] == 'hit_marker'
      p "you can't hit a place you've already selected"
    else @grid[row] [column] == 'miss_marker'
      p "you can't hit a place you've already selected"
    end
  end

  def grid
    @grid
  end
end