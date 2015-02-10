require 'game'

describe Game do

  let(:game)   { Game.new       } 
  let(:player) { double :player }

  context "new game" do

    it "should ask the player to place a ship" do
      expect(game.new_game(player)).to eq("Player, place a ship on the board")
    end
  end
end
