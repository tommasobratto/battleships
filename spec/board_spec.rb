require 'board'

describe Board do

  let(:board)  { Board.new      }
  let(:ship)   { double :ship, size: 2, hit_points: 1, orientation: "Hor." }

  it "should be able to show the status of a cell" do
    expect(board.grid[0][0]).to eq('miss')
  end

  it "should be able to place a marker" do
    board.check_hit(0, 0)  
    expect(board.grid[0][0]).to eq('miss_marker')
  end


  it "should be able to accept a ship" do
    board.place(0, 0, ship)
    expect(board.grid[0][0]).to eq('hit')
    expect(board.grid[0][1])
  end

  it "should report when there's a hit" do
    board.place(0, 0, ship)
    board.check_hit(0, 0)
    expect(board.report_status(0, 0)).to eq("Hit!")
  end
end
