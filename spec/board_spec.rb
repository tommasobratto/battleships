require 'board'

describe Board do

  let(:board)  { Board.new      }
  let(:ship)   { double :ship, size: 1, name: 'pedalo', hit_points: 1  }

  it "should be able to show the status of a cell" do
    expect(board.grid["a1"]).to eq("water ")
  end

  it "should be able to accept a ship" do
    board.place(ship)
    expect(board.grid['a1']).to eq("ship ")
  end

  it "should be able to place a marker" do
    board.take_shot    
    expect(board.grid['a1']).to eq("miss ")
  end

  it "should report when there's a hit" do
    board.place(ship)
    board.take_shot
    expect(board.report_status('a1')).to eq("Hit!")
  end
end
