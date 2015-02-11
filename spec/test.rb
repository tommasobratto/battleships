def grid (rows, columns)
   columns = (["A"]*10+["B"]*10).to_a
   rows = (1..10).to_a {|num| puts num}*10
   grid = []
   grid << columns.zip(rows)
   @grid = columns.zip(rows) {|key| puts key.join}.to_a

 end

 puts grid("","")