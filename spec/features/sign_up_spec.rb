require 'rails_helper'
require 'spec_helper'

RSpec.feature "SignUp", type: :feature do
    background do
      User.create( first_name:'Amar', last_name:'user_last', about_me:'student', email: 'user@example.com', password: 'caplin', password_confirmation: 'caplin')
    end

    scenario "Signing in with correct credentials" do
      visit '/'
      within(:xpath, ".//li[@id='sign_up']") do
        fill_in 'first_name', with: 'Amar'
        fill_in 'last_name', with: 'user_last'
        fill_in 'about_me', with: 'student'
        fill_in 'email', with: 'user@example.com'
        fill_in 'password', with: 'caplin'
        fill_in 'password_confirmation', with: 'caplin'
      end
      click_button 'Sign Up'
      expect(page).to have_content 'Success'
    end

    given(:other_user) { User.create(email: 'other@example.com', password: 'rous') }

    scenario "Signing in as another user" do
      visit '/'
      within(:xpath, ".//li[@id='log_in']") do
        find_field('email').value
        fill_in 'email', with: other_user.email
        find_field('password').value
        fill_in 'password', with: other_user.password

      end
      click_button 'Log in'
      expect(page).to have_content 'Invalid email or password'
    end


end#RSpec
