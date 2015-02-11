require 'ship'

describe Ship do

  it "should know what's going to be its name" do
    ship = Ship.destroyer
    expect(ship.name).to eq 'destroyer'
  end

  it "should know the size of a destroyer" do
    ship = Ship.destroyer
    expect(ship.size).to eq 2
  end

  it "should know when it has been hit" do
    ship = Ship.destroyer
    expect(ship.hit).to eq true
  end

end