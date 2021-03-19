require '../lib/player.rb'

describe Player do
	it 'Returns a player' do
		expect(subject.name).to eq("Will")
	end
end