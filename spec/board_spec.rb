require 'board'

describe Board do

  let(:board) { Board.new }

  context 'grid' do

    it 'should draw a grid' do
      expect(board.draw_grid).to eq [["miss", "miss"],["miss", "miss"]]
    end

    it 'should place a ship' do
      board.draw_grid
      expect(board.place_ship(0, 0)).to eq 'hit'
    end

  end


end