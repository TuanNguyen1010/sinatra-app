
feature 'Enter Names' do
  scenario 'displays the names submitted on form' do
    sign_in_and_play
    expect(page).to have_content("Jack vs Peter")
  end
end
