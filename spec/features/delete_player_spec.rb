require "rails_helper"
RSpec.describe "Delete a player" do
    before do
        @player=Player.create(first_name:"Nandha", last_name:"Kumar")

    end
    it "Delete a player" do
    visit root_path
    click_link "Delete"
    expect(current_path).to eq(root_path)
    expect(page).not_to have_text("Nandha")

    end
end
