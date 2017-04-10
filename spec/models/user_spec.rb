require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is a thing' do
    expect{User.new}.to_not raise_error
  end

    it 'has name has first_name, last_name, about_me, email and password' do
      user = User.new
      user.first_name = 'user_first'
      user.last_name = 'user_last'
      user.about_me = 'student'
      user.email = 'user@example.com'
      user.password = 'caplin'
      expect(user.save) == true
      u2 = User.find_by_email 'user@example.com'
      expect(u2.first_name).to eq 'user_first'
      expect(u2.last_name).to eq 'user_last'
      expect(u2.about_me).to eq 'student'
      expect(u2.email).to eq 'user@example.com'
      expect(u2.password) == 'caplin'
    end
end#Rspec
