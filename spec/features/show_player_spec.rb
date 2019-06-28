require "rails_helper"
RSpec.describe "Show a particular Player" do
before do
    @player=Player.create(first_name:"Nandha",last_name:"Kumar")

end
it "Displays the user" do
visit root_path
click_link "Show"
expect(current_path).to eq("/players/#{@player.id}")
expect(page).to have_text("#{@player.first_name}")
expect(page).to have_text("#{@player.last_name}")

end
end