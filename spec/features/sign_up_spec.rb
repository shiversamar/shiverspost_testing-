require 'rails_helper'

RSpec.feature "SignUp", type: :feature do
    background do
      User.create( first_name:'user_first', last_name:'user_last', about_me:'student', email: 'user@example.com', password: 'caplin')
    end

    scenario "Signing in with correct credentials" do
      visit '/'
      within("Sign Up") do
        fill_in 'first_name', with: 'user_first'
        fill_in 'last_name', with: 'user_last'
        fill_in 'about_me', with: 'student'
        fill_in 'email', with: 'user@example.com'
        fill_in 'password', with: 'caplin'

      end
      click_button 'Sign Up'
      expect(page).to have_content 'Success'
    end

    given(:other_user) { User.make(email: 'other@example.com', password: 'rous') }

    scenario "Signing in as another user" do
      visit '/'
      within("log in ") do
        fill_in 'Email', with: other_user.email
        fill_in 'Password', with: other_user.password
      end
      click_button 'Log in'
      expect(page).to have_content 'Invalid email or password'
    end

end
