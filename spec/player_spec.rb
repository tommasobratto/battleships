require 'player'

describe Player do

  let(:player) { Player.new    }
  let(:board)  { double :board }
  let(:ship)   { double :ship  }

  it "should be able to shoot" do
    expect(board).to receive(:check_hit).with('a1')
    player.make_move(board)
  end

  it "should be able to place a ship" do
    expect(ship).to receive(:orientation=).with('E')
    expect(board).to receive(:place).with('a1', ship)
    player.place_ship(board, ship)
  end
  
end