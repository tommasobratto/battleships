require 'player'

describe Player do

  let(:player) { Player.new    }
  let(:board)  { double :board }
  let(:ship)   { double :ship  }

  it "should be able to make a move" do
    expect(board).to receive(:place_marker).with('a1')
    player.make_move(board)
  end

  it "should be able to place a ship" do
    expect(board).to receive(:place_ship).with('a1') 
    player.place_ship(board)
  end
  
end