feature 'player 1 attacks' do
  scenario 'player 2 is attacked by player 1' do
    sign_in_and_play
    click_on("Attack")
    expect(page).to have_content "Jack attacked Peter"
  end
end
