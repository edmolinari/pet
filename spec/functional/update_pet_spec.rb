describe "the update pet process", type: :feature do
  let(:pet) { FactoryBot.create(:pet)}

  it "updates weight" do
    visit "/pets/#{pet.id}/edit"
    
      fill_in 'pet_weight', with: '3.2'
    click_button 'Update Pet'
    expect(page).to have_content 'Pet was successfully updated'
  end

  context "error messages" do
    it "updates weight" do
    visit "/pets/#{pet.id}/edit"
    
      fill_in 'pet_name', with: nil
    click_button 'Update Pet'
    expect(page).to have_content 'Name can\'t be blank'
  end

  end
end