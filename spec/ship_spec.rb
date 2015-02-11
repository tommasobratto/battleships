require 'ship'

describe Ship do

  let(:ship) { Ship.destroyer }

  it "should know what's going to be its name" do
    expect(ship.name).to eq 'destroyer'
  end

  it "should know the size of a destroyer" do
    expect(ship.size).to eq 2
  end

  it "should know when it has been hit" do
    ship.hit
    expect(ship.hit_points).to eq 1
  end

  it "should know when it has been sunk" do
    2.times { ship.hit }
    expect(ship).to be_sunk
  end
 
end