feature 'names' do
  scenario 'People fill in their names, submit it, and see their names on screen' do
    visit '/'

    fill_in "player_1", :with => "Will"
    fill_in 'player_2', :with => "Emma"
    click_on 'submit'

    save_and_open_page

    expect(page).to have_text "Will vs. Emma"
  end
end
