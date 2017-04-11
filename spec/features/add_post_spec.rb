require 'rails_helper'




RSpec.feature "adding posts" do
  context 'Going to website' do
    Steps'Being on website' do
      Given 'I am on the landing page' do
          visit '/'
        end
        Then 'I can see a message board' do
          expect(page).to have_content ("Message Board")
          expect(page).to have_content ("Sign Up")
          expect(page).to have_content ("Log In")
        end#Then
      end


      Steps 'to view post' do
        Given 'that I am on the landing page'do
          visit '/'
          click_link(link_to'View Post')
          expect(find('#content h2')).to have_content('title')
          expect(find('#content p')).to have_content('Author')
        end
      end






    end#context
end#RSpec

 #<Post id: 1, title: "Test Title", body: "Test Body", created_at: "2017-04-02 17:41:07", updated_at: "2017-04-05 21:23:29", user_id: 1>
