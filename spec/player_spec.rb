require 'player'

describe Player do

  it 'should be able to make a move' do 
    expect(player.make_move).to eq true
  end
  
end