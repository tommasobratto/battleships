require 'ship'

describe Ship do

  let(:ship) { Ship.new(2, 'Hor.', 'A1') }

  it "should know it's size" do
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

  it "should be able to have an orientation" do
    expect(ship.orientation).to eq('Hor.')
  end
 
  it "should be able to have a starting point" do
    expect(ship.start_point).to eq('A1')
  end
end