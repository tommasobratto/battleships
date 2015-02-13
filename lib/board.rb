
class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(10) { Array.new(10) }
    draw_grid
  end

  def draw_grid
    (0..9).each do |row|
      (0..9).each do |column|
        @grid[row] [column] = 'miss'
      end
    end
    @grid
  end

  def place(x, y, ship)
    if orientation = 'Hor.'
      @grid[x] [y] = 'hit'
      y + ship.size 
      @grid[x] [y] = 'hit' 
    else ship.orientation = 'Ver.'
      @grid[x] [y] = 'hit'
      x + ship.size 
      @grid[x] [y] = 'hit'
    end
  end


  def check_hit(x, y)
    if @grid[x] [y] == 'hit'
      p "Hit!"
      @grid[x] [y] = 'hit_marker'
      # game.score(player)
    elsif @grid[x] [y] == 'miss'
      p "Miss!"
      @grid[x] [y] = 'miss_marker'
    elsif @grid[x] [y] == 'hit_marker'
      p "You can't hit a place you've already selected"
    else @grid[x] [y] == 'miss_marker'
      p "You can't hit a place you've already selected"
    end
    report_status(x, y)
  end

  def report_status(x, y)
    if @grid[x] [y] == 'hit_marker'
      p "Hit!"
    else
      p "Miss!"
    end
  end

end
