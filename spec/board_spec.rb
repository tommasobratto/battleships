require 'board'

describe Board do

  let(:board) { Board.new  }
  let(:player){ Player.new }

  context 'grid' do

    it 'should have a grid' do
      expect(board.draw_grid).to eq [["miss", "miss"],["miss", "miss"]]
    end

    it 'should place a ship' do
      board.draw_grid
      expect(board.place_ship(0, 0)).to eq 'hit'
    end

    it 'should return nil if a ship is placed in an unavailable cell' do
      expect(board.place_ship(0, 2)).to eq nil
    end


  end

end