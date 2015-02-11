require 'ship'

describe Ship do

  it "should have a size" do
    ship = Ship.new(1)
    expect(ship.size).to eq 1
  end

end