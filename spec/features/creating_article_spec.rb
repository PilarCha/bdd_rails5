require "rails_helper"

RSpec.feature "Creating Articles" do
    scenario "A user creates a new article" do
      visit "/"

      click_link "New Article"

      fill_in "Title", with:  'New Article'
      fill_in "Body", with:  "My culo is indeed huge"

      click_button "Create Article"

      expect(page).to have_content("Article has been created")
      expect(page.current_path).to eq(articles_path)

    end
end
