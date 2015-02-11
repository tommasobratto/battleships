module Cell 

  attr_reader :status


  def water
    @status = "water " 
  end

  def ship
    @status = "ship "
  end

  def hit
    @status = "hit "
  end

  def miss
    @status = "miss "
  end
  
end