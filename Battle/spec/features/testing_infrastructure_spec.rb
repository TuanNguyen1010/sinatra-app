
feature 'Enter Names' do
  scenario 'displays the names submitted on form' do
    sign_in_and_play
    expect(page).to have_content("Jack vs Peter")
  end
end

feature ' View hit point' do
  scenario 'shows player 2 hit point' do
    sign_in_and_play
    expect(page).to have_content "Peter has 60 health"
  end
end

feature 'player 1 attacks' do
  scenario 'player 2 loses hitpoints due to an attack' do
    sign_in_and_play
    click_on("Attack")
    expect(page).to have_content "Jack attacked Peter"
  end
end
