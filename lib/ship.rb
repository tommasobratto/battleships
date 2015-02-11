class Ship

  attr_reader :size, :name

  def initialize(size, name)
    @size = size
    @name = name
  end

  def self.destroyer
    new(2, 'destroyer')
  end

end