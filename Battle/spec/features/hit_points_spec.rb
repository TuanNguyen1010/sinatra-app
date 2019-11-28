feature ' View hit point' do
  scenario 'shows player 2 hit point' do
    sign_in_and_play
    expect(page).to have_content "Peter has 60 health"
  end
end
