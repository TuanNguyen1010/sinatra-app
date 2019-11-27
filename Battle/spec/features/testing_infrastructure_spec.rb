
feature 'Enter Names' do
  scenario 'displays the names submitted on form' do
    visit('/')
    fill_in( :player_1, with: "Jack")
    fill_in( :player_2, with: "Peter")
    click_on('Submit')
    expect(page).to have_content("Jack vs Peter")
  end
end
