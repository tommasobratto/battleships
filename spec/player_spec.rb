require 'player'

describe Player do

  let(:player) { Player.new    }
  let(:board)  { double :board }
  let(:ship)   { double :ship  }

  it "should be able to shoot" do
    expect(board).to receive(:check_hit).with(0, 0)
    player.make_move(board)
  end

  it "should be able to place a ship" do
    expect(board).to receive(:place).with(0, 0, ship)
    player.place_ship(board, ship)
  end
  
end