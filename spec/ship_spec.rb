require 'ship'

describe Ship do

  it "should have a size" do
    ship = Ship.new
    expect(ship.size).to eq 1
  end

end