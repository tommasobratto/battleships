def board
  @grid = Hash.new
    ('a'..'j').each do |letter|
    (1..10).each do |i|
    @grid["#{letter}#{i}"] = "banana "
    print @grid["#{letter}#{i}"]
    end
  puts
  end
end

p board