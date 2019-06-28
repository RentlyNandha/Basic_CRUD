require "rails_helper"
RSpec.describe "Edit Player" do
before do
    @player=Player.create(first_name:"Nandha",last_name:"kumar")
    visit root_path

end
it "Edit the user" do
click_link "Edit"
expect(current_path).to eq("/players/#{@player.id}/edit")
#expect(page).to have_text("#{@player.first_name}")
#expect(page).to have_text("#{@player.last_name}")
fill_in "First name", with: "Nandhakumar"
fill_in "Last name",with: "M"
click_button "Update Player"
expect(current_path).to eq(root_path)
expect(page).to have_text("Nandhakumar")
expect(page).to have_text("M")
end
end