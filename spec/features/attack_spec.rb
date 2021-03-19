feature 'attack' do
	scenario 'Player 1 can attack Player 2 and recieves confirmation' do
		sign_in_and_play
		find_button('attack').click
		expect(page).to have_content "Will attacked Emma"
	end
end