require 'board'

describe Board do

  let(:board) { Board.new    }
  let(:ship)  { double :ship }

  it "should be able to show the status of a cell" do
    expect(board.grid["a1"]).to eq("water ")
  end

  it "should be able to accept a ship" do
    board.place_ship('a1')
    expect(board.grid['a1']).to eq("ship ")
  end

  it "should be able to place a marker" do
    board.place_marker('a1')
    expect(board.grid['a1']).to eq("miss ")
  end
end
