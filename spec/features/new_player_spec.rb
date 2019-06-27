require "rails_helper"
RSpec.describe "List players" do
it "It displays the New player registration page" do

visit "/"
click_link("New Player") 
expect(page).to have_field("First name")
expect(page).to have_field("Last name")



end 
end