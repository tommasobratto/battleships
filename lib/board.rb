class Board


  def draw_board
  @grid = Hash.new
    ('a'..'j').each do |letter|
    (1..10).each do |i|
    @grid["#{letter}#{i}"] = "miss "
    print @grid["#{letter}#{i}"]
    end
  end
end

end