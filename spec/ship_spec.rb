require 'ship'

describe Ship do

  let(:ship) { Ship.destroyer('E') }
  let(:board){ Board.new        }

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
    expect(ship.orientation).to eq('E')
  end
 
end