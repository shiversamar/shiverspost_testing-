require 'rails_helper'


RSpec.feature 'adding posts' do
  # background do
  #   Post.create( title:'Test Title', body:'Test Body')
  # end
  #
  # context 'Going to website' do
  #   Steps'Being on website' do
  #     Given 'I am on the landing page' do
  #         visit '/'
  #       end
  #       Then 'I can see a message board' do
  #         expect(page).to have_content ("Message Board")
  #         expect(page).to have_content ("Sign Up")
  #         expect(page).to have_content ("Log In")
  #       end#Then
  #     end
  #
  #     Steps 'to View Post' do
  #       Given 'that I am on the Message Board'do
  #         visit '/'
  #         click_on('View Post')
  #         expect(find('#content h2')).to have_content('title')
  #         expect(find('#content p')).to have_content('Author')
  #       end
  #     end

      # scenario 'allow a user to add a post' do
      #
      #   # visit new_post_path
      #   #
      #   #   fill_in 'title', with: "Test Title"
      #   #   fill_in 'body', with: "Test Body"
      #   #
      #   #   click_on("Create Post")
      #
      #   post = create(:post, title:"Test Title", body:"Test Body", user_id:1)
      #   visit post_path(post)
      #
      #     expect(page).to have_content("Test Title")
      #     expect(page).to have_content("Test Body")
      #     expect(page).to have_content(1)
      #
      #   end
























    # end#context
end#RSpec

 #<Post id: 1, title: "Test Title", body: "Test Body", created_at: "2017-04-02 17:41:07", updated_at: "2017-04-05 21:23:29", user_id: 1>
