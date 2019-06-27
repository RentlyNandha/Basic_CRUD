require "rails_helper"
RSpec.describe "create player" do
    before do
        visit players_new_path
    end
it "Creates a player if validation passes" do
fill_in "First name", with: "Prakathi"
fill_in "Last name",with: "R"
click_button "Create Player"
expect(current_path).to eq(root_path)

end 

end