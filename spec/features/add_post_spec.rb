require 'rails_helper'

RSpec.feature "adding posts" do

  scenario "allow a user to add a post" do

    visit new_post_path

    fill_in('title', with: 'Test Title')
    fill_in('body', with: 'Test Body')

    click_on("Create Post")

    expect(page).to have_content('Test Title')
    expect(page).to have_content('Test Body')

  end

end

 #<Post id: 1, title: "Test Title", body: "Test Body", created_at: "2017-04-02 17:41:07", updated_at: "2017-04-05 21:23:29", user_id: 1> 
