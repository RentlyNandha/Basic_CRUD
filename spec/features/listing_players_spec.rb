require "rails_helper"
RSpec.describe "List players" do
it "displays the first name and last name from the players saved" do
player1=Player.create(first_name:"Nandha",last_name:"M")
player1=Player.create(first_name:"Prakathi",last_name:"R")
visit "/"
 
expect(page).to have_text("Nandha")
expect(page).to have_text("M")
expect(page).to have_text("Prakathi")
expect(page).to have_text("R")
expect(page).to have_link("New Player")

end 
end